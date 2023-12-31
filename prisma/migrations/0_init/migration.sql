-- CreateTable
CREATE TABLE "kategori" (
    "username" VARCHAR(32),
    "budget" INTEGER NOT NULL,
    "id_kategori" SERIAL NOT NULL,
    "nama_kategori" VARCHAR(32),

    CONSTRAINT "kategori_pkey" PRIMARY KEY ("id_kategori")
);

-- CreateTable
CREATE TABLE "users" (
    "username" VARCHAR(32) NOT NULL,
    "password" VARCHAR(32) NOT NULL,

    CONSTRAINT "users_pkey" PRIMARY KEY ("username")
);

-- CreateTable
CREATE TABLE "wallet" (
    "username" VARCHAR(32),
    "saldo" INTEGER NOT NULL,
    "id_wallet" SERIAL NOT NULL,
    "tipe" VARCHAR(32),

    CONSTRAINT "wallet_pkey" PRIMARY KEY ("id_wallet")
);

-- AddForeignKey
ALTER TABLE "kategori" ADD CONSTRAINT "kategori_username_fkey" FOREIGN KEY ("username") REFERENCES "users"("username") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "wallet" ADD CONSTRAINT "wallet_username_fkey" FOREIGN KEY ("username") REFERENCES "users"("username") ON DELETE NO ACTION ON UPDATE NO ACTION;

