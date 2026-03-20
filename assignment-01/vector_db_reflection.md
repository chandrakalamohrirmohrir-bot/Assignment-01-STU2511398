##Vector DB Use Case

A tradition keyboard based research would not be suffiecient  for searching large legal contracts.
Keyboard search relies on exact word matching and may fail to capture the true meaning of a query.For example, a query like "termination clauses" may not return relavant sections if the exact phrase is not used in the document .

Vector database solve this problems using embeddings that capture semantic meaning rather than exact keywords.This allows the system to find relevant sections even if different words or phrasing is used.

In this system the contracts would be converted into embeddings and stored in a database. When a user asks a questions,the query is also converted into an embedding and compared with stored embeddings to find the most similar sections.

Thus, vector database enable semantic search, making them highly effective for large and and complex documentslike legal contracts.
