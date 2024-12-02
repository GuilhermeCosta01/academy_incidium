with
    fonte_categorias as (
        select *
        from {{ source('erp', 'CATEGORY') }}
    )

    , renomeado as (
        select 
            cast(ID as int) as pk_categoria
            ,cast(CATEGORYNAME as String) as nome_categoria
            ,cast(DESCRIPTION as String) as descricao_categoria
        from fonte_categorias
    )

 select * 
from renomeado