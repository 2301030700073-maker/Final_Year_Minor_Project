.class public final synthetic Lcom/eygraber/uri/uris/OpaqueUri$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/eygraber/uri/uris/OpaqueUri;


# direct methods
.method public synthetic constructor <init>(Lcom/eygraber/uri/uris/OpaqueUri;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/eygraber/uri/uris/OpaqueUri$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/eygraber/uri/uris/OpaqueUri$$ExternalSyntheticLambda0;->f$0:Lcom/eygraber/uri/uris/OpaqueUri;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/eygraber/uri/uris/OpaqueUri$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/eygraber/uri/uris/OpaqueUri$$ExternalSyntheticLambda0;->f$0:Lcom/eygraber/uri/uris/OpaqueUri;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/eygraber/uri/uris/OpaqueUri;->scheme:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const/16 v1, 0x3a

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/eygraber/uri/uris/OpaqueUri;->encodedSchemeSpecificPart$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 24
    .line 25
    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/eygraber/uri/uris/OpaqueUri;->fragmentPart:Lcom/eygraber/uri/parts/Part;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/eygraber/uri/parts/Part;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_0

    .line 41
    .line 42
    const/16 v1, 0x23

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/eygraber/uri/uris/OpaqueUri;->encodedFragment$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 48
    .line 49
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0

    .line 63
    :pswitch_0
    iget-object p0, p0, Lcom/eygraber/uri/uris/OpaqueUri;->fragmentPart:Lcom/eygraber/uri/parts/Part;

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/eygraber/uri/parts/AbstractPart;->getEncoded()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0

    .line 70
    :pswitch_1
    iget-object p0, p0, Lcom/eygraber/uri/uris/OpaqueUri;->fragmentPart:Lcom/eygraber/uri/parts/Part;

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/eygraber/uri/parts/AbstractPart;->getDecoded()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0

    .line 77
    :pswitch_2
    iget-object p0, p0, Lcom/eygraber/uri/uris/OpaqueUri;->ssp:Lcom/eygraber/uri/parts/Part;

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/eygraber/uri/parts/AbstractPart;->getDecoded()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0

    .line 84
    :pswitch_3
    iget-object p0, p0, Lcom/eygraber/uri/uris/OpaqueUri;->ssp:Lcom/eygraber/uri/parts/Part;

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/eygraber/uri/parts/AbstractPart;->getEncoded()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    return-object p0

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
