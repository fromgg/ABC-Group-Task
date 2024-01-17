//Выбрать клики у которых точно есть actions:
SELECT *
FROM my_schema.click
WHERE id IN (SELECT click_id FROM my_schema.actions);

//Выбрать клики у которых точно нету actions:
SELECT *
FROM my_schema.click
WHERE NOT EXISTS (SELECT 1 FROM my_schema.actions WHERE click_id = my_schema.click.id);
