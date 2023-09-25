import { PrismaClient } from "@prisma/client";
import React, { useEffect, useState } from "react";
import { JSON } from "sequelize";

const prisma = new PrismaClient();

async function PostsByTitle() {
    const result = await prisma.$queryRaw`SELECT * FROM users WHERE password = '1'`;
        if (Array.isArray(result) && result.length > 0) {
            console.log("ada");
            const userList = result.map((user: any, i: number) => <p key={i}>{user.username}</p>);
            return (
                <div>
                    <h1>List</h1>
                    {userList}
                </div>
            );
        } else {
            console.log("tidak ada");
            return (
                <div>
                    <h1>List</h1>
                    <p>No users found.</p>
                </div>
            );
        }

        prisma.$disconnect();
    }

    export default PostsByTitle;

