-- db indexed_cars

CREATE TABLE IF NOT EXISTS car_models
(
 id serial,
 make_code character varying(125) NOT NULL,
 make_title character varying(125) NOT NULL,
 model_code character varying(125) NOT NULL,
 model_title character varying(125) NOT NULL,
 year integer NOT NULL,
 PRIMARY KEY (id)
)

CREATE UNIQUE INDEX "lam_index"
ON car_models (make_code)
WHERE make_code = 'LAM'; /*time: 176.478*/

CREATE UNIQUE INDEX "GTR_index"
ON car_models (model_title)
WHERE make_code = 'NISSAN' AND model_code = 'GT-R'; /*time: 176.663*/

CREATE INDEX "lam_info"
ON car_models (make_code, model_code, model_title, year)
WHERE make_code = 'LAM'; /*time: 196.026*/

CREATE INDEX "2010to2015"
ON car_models (make_code, make_title, model_code, model_title, year)
WHERE year BETWEEN 2010 AND 2015; /*time: 2864.780*/

CREATE INDEX "carsIn2010"
ON car_models(make_code, make_title, model_code, model_title, year)
WHERE year = 2010; /*time: 724.404*/