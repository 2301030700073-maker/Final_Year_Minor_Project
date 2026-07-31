.class public final Lorg/minidns/iterative/ReliableDnsClient$2;
.super Lorg/minidns/DnsClient;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic this$0:Lorg/minidns/iterative/ReliableDnsClient;


# direct methods
.method public constructor <init>(Lorg/minidns/iterative/ReliableDnsClient;Lorg/minidns/cache/LruCache;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/minidns/iterative/ReliableDnsClient$2;->this$0:Lorg/minidns/iterative/ReliableDnsClient;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lorg/minidns/DnsClient;-><init>(Lorg/minidns/cache/LruCache;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final isResponseCacheable(Lorg/minidns/dnsmessage/Question;Lorg/minidns/dnsqueryresult/StandardDnsQueryResult;)Z
    .locals 4

    .line 1
    iget-object p2, p2, Lorg/minidns/dnsqueryresult/DnsQueryResult;->response:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p2, Lorg/minidns/dnsmessage/DnsMessage;

    .line 4
    .line 5
    iget-object v0, p2, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lorg/minidns/record/Record;

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Lorg/minidns/record/Record;->isAnswer(Lorg/minidns/dnsmessage/Question;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    move p1, v3

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move p1, v2

    .line 34
    :goto_0
    iget-object p0, p0, Lorg/minidns/iterative/ReliableDnsClient$2;->this$0:Lorg/minidns/iterative/ReliableDnsClient;

    .line 35
    .line 36
    invoke-virtual {p0, p2}, Lorg/minidns/iterative/ReliableDnsClient;->isResponseAcceptable(Lorg/minidns/dnsmessage/DnsMessage;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    if-nez p0, :cond_2

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    return v3

    .line 45
    :cond_2
    return v2
.end method

.method public final newQuestion(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->recursionDesired:Z

    .line 3
    .line 4
    iget-object v0, p1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->ednsBuilder:Lorg/minidns/edns/Edns$Builder;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lorg/minidns/edns/Edns$Builder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->ednsBuilder:Lorg/minidns/edns/Edns$Builder;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->ednsBuilder:Lorg/minidns/edns/Edns$Builder;

    .line 16
    .line 17
    iget-object v1, p0, Lorg/minidns/AbstractDnsClient;->dataSource:Lorg/minidns/source/NetworkDataSource;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const/16 v1, 0x4d0

    .line 23
    .line 24
    iput v1, v0, Lorg/minidns/edns/Edns$Builder;->udpPayloadSize:I

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    iput-boolean v1, v0, Lorg/minidns/edns/Edns$Builder;->dnssecOk:Z

    .line 28
    .line 29
    iget-object p0, p0, Lorg/minidns/iterative/ReliableDnsClient$2;->this$0:Lorg/minidns/iterative/ReliableDnsClient;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lorg/minidns/iterative/ReliableDnsClient;->newQuestion(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method
