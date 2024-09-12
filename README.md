# Minha build do nvim pra não esquecer depois

## Remaps:

### Leader é espaço.

### dingllm
* ```<C-i>``` para consulta padrão
* ```<C-I>``` para consulta complexa

### harpoon

* ```<leader>a``` para adicionar o arquivo no buffer
* ```<C-e>``` para abrir o buffer
* ```<C-h,j,k,l>``` para pular entre os 4 primeiros arquivos respectivamente

### telescope

* ```<leader>ff``` para encontrar arquivos
* ```<leader>gf``` para catucar arquivos git
* ```<leader>fh``` para consultar os helps do nvim

## Docker

Se por qualquer motivo eu quiser rodar esse rolo numa imagem docker, 
posso fazer o seguinte:

* ```docker build .```
* ```docker run -e GROQ_API_KEY=<chave do groq> -it <id da imagem>```
