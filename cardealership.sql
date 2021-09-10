CREATE TABLE salesperson (
	"sales_id" serial NOT NULL,
	"first_name" varchar(50) NOT NULL,
	"last_name" varchar(50) NOT NULL,
	CONSTRAINT "salesperson_pk" PRIMARY KEY ("sales_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE invoice (
	"invoice_id" serial NOT NULL,
	"date" DATE NOT NULL,
	"sales_id" serial NOT NULL,
	"dealer_id" int NOT NULL,
	"customer_id" int NOT NULL,
	CONSTRAINT "invoice_pk" PRIMARY KEY ("invoice_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE inventory (
	"dealer_id" serial NOT NULL,
	"make" varchar(50) NOT NULL,
	"model" varchar(50) NOT NULL,
	"year" int NOT NULL,
	"msrp" float4 NOT NULL,
	"color" varchar(20) NOT NULL,
	CONSTRAINT "inventory_pk" PRIMARY KEY ("dealer_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE customer (
	"customer_id" serial NOT NULL,
	"first_name" varchar(50) NOT NULL,
	"last_name" varchar(50) NOT NULL,
	"number" int NOT NULL,
	CONSTRAINT "customer_pk" PRIMARY KEY ("customer_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE customer_car (
	"car_id" serial NOT NULL,
	"make" varchar(50) NOT NULL,
	"model" varchar(50) NOT NULL,
	"color" varchar(50) NOT NULL,
	"year" int NOT NULL,
	"customer_id" int NOT NULL,
	CONSTRAINT "customer_car_pk" PRIMARY KEY ("car_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE service (
	"service_id" serial NOT NULL UNIQUE,
	"service_type" varchar(255) NOT NULL,
	"service_cost" varchar(255) NOT NULL,
	"car_id" int NOT NULL,
	"mechanic_id" int NOT NULL,
	"parts_id" int NOT NULL,
	CONSTRAINT "service_pk" PRIMARY KEY ("service_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE mechanic (
	"mechanic_id" serial NOT NULL,
	"first_name" varchar(50) NOT NULL,
	"last_name" varchar(50) NOT NULL,
	CONSTRAINT "mechanic_pk" PRIMARY KEY ("mechanic_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE parts (
	"parts_id" serial NOT NULL,
	"part_type" varchar(50) NOT NULL,
	"part_cost" varchar(50) NOT NULL,
	CONSTRAINT "parts_pk" PRIMARY KEY ("parts_id")
) WITH (
  OIDS=FALSE
);




ALTER TABLE "invoice" ADD CONSTRAINT "invoice_fk0" FOREIGN KEY ("sales_id") REFERENCES "salesperson"("sales_id");
ALTER TABLE "invoice" ADD CONSTRAINT "invoice_fk1" FOREIGN KEY ("dealer_id") REFERENCES "inventory"("dealer_id");
ALTER TABLE "invoice" ADD CONSTRAINT "invoice_fk2" FOREIGN KEY ("customer_id") REFERENCES "customer"("customer_id");



ALTER TABLE "customer_car" ADD CONSTRAINT "customer_car_fk0" FOREIGN KEY ("customer_id") REFERENCES "customer"("customer_id");

ALTER TABLE "service" ADD CONSTRAINT "service_fk0" FOREIGN KEY ("car_id") REFERENCES "customer_car"("car_id");
ALTER TABLE "service" ADD CONSTRAINT "service_fk1" FOREIGN KEY ("mechanic_id") REFERENCES "mechanic"("mechanic_id");
ALTER TABLE "service" ADD CONSTRAINT "service_fk2" FOREIGN KEY ("parts_id") REFERENCES "parts"("parts_id");










