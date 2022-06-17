codeunit 50143 "MPLAPI"
{
    procedure Connect()
    var
        Client: HttpClient;
        Response: HttpResponseMessage;
        Content: HttpContent;
        Request: HttpRequestMessage;
        Result: Text;
        Output: Text;
        baseUri: Label 'https://sandbox.api.posta.hu';
        accessTokenUrl: Label '/oauth2/token';
        endpointUrl: Label '/v2/mplapi/';
        clientID: Label 'XTwG0pDzM2rEuLtKGeDHgysDeprxUUPu';
        clientSecret: Label 'uFOCnL9xH7JSFWeE';
    begin
        // 'https://jsonplaceholder.typicode.com/users'
        Request.SetRequestUri(baseUri + accessTokenUrl);
        Request.Method('Get');
        Client.Send(Request, Response);
        if Response.IsSuccessStatusCode then
            Content := Response.Content
        else
            Message('Response was negative %1 %2', Response.HttpStatusCode, Response.ReasonPhrase);
        Content.ReadAs(Result);
        Message(Result);
    end;
}
