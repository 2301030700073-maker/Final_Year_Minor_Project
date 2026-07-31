.class public final synthetic Lcom/eygraber/uri/uris/HierarchicalUri$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/eygraber/uri/uris/HierarchicalUri;


# direct methods
.method public synthetic constructor <init>(Lcom/eygraber/uri/uris/HierarchicalUri;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/eygraber/uri/uris/HierarchicalUri$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/eygraber/uri/uris/HierarchicalUri$$ExternalSyntheticLambda0;->f$0:Lcom/eygraber/uri/uris/HierarchicalUri;

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
    iget v0, p0, Lcom/eygraber/uri/uris/HierarchicalUri$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/eygraber/uri/uris/HierarchicalUri$$ExternalSyntheticLambda0;->f$0:Lcom/eygraber/uri/uris/HierarchicalUri;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/eygraber/uri/uris/HierarchicalUri;->pathPart:Lcom/eygraber/uri/parts/PathPart;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/eygraber/uri/parts/AbstractPart;->getDecoded()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :pswitch_0
    iget-object p0, p0, Lcom/eygraber/uri/uris/HierarchicalUri;->pathPart:Lcom/eygraber/uri/parts/PathPart;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/eygraber/uri/parts/AbstractPart;->getEncoded()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :pswitch_1
    iget-object p0, p0, Lcom/eygraber/uri/uris/HierarchicalUri;->authorityPart:Lcom/eygraber/uri/parts/Part;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/eygraber/uri/parts/AbstractPart;->getEncoded()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :pswitch_2
    iget-object p0, p0, Lcom/eygraber/uri/uris/HierarchicalUri;->authorityPart:Lcom/eygraber/uri/parts/Part;

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/eygraber/uri/parts/AbstractPart;->getDecoded()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :pswitch_3
    iget-object p0, p0, Lcom/eygraber/uri/uris/HierarchicalUri;->ssp$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 37
    .line 38
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Lcom/eygraber/uri/parts/Part;

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/eygraber/uri/parts/AbstractPart;->getDecoded()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :pswitch_4
    iget-object p0, p0, Lcom/eygraber/uri/uris/HierarchicalUri;->ssp$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 50
    .line 51
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    check-cast p0, Lcom/eygraber/uri/parts/Part;

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/eygraber/uri/parts/AbstractPart;->getEncoded()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/eygraber/uri/uris/HierarchicalUri;->scheme:Ljava/lang/String;

    .line 68
    .line 69
    if-eqz v1, :cond_0

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const/16 v1, 0x3a

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    :cond_0
    invoke-virtual {p0, v0}, Lcom/eygraber/uri/uris/HierarchicalUri;->appendSspTo(Ljava/lang/StringBuilder;)V

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Lcom/eygraber/uri/uris/HierarchicalUri;->fragmentPart:Lcom/eygraber/uri/parts/Part;

    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/eygraber/uri/parts/Part;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_1

    .line 89
    .line 90
    const/16 v1, 0x23

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-object p0, p0, Lcom/eygraber/uri/uris/HierarchicalUri;->encodedFragment$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 96
    .line 97
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    check-cast p0, Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    return-object p0

    .line 111
    :pswitch_6
    iget-object p0, p0, Lcom/eygraber/uri/uris/HierarchicalUri;->pathPart:Lcom/eygraber/uri/parts/PathPart;

    .line 112
    .line 113
    iget-object p0, p0, Lcom/eygraber/uri/parts/PathPart;->pathSegments$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 114
    .line 115
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    check-cast p0, Lcom/eygraber/uri/PathSegments;

    .line 120
    .line 121
    return-object p0

    .line 122
    :pswitch_7
    iget-object p0, p0, Lcom/eygraber/uri/uris/HierarchicalUri;->fragmentPart:Lcom/eygraber/uri/parts/Part;

    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/eygraber/uri/parts/AbstractPart;->getEncoded()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    return-object p0

    .line 129
    :pswitch_8
    iget-object p0, p0, Lcom/eygraber/uri/uris/HierarchicalUri;->fragmentPart:Lcom/eygraber/uri/parts/Part;

    .line 130
    .line 131
    invoke-virtual {p0}, Lcom/eygraber/uri/parts/AbstractPart;->getDecoded()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    return-object p0

    .line 136
    :pswitch_9
    iget-object p0, p0, Lcom/eygraber/uri/uris/HierarchicalUri;->queryPart:Lcom/eygraber/uri/parts/Part;

    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/eygraber/uri/parts/AbstractPart;->getEncoded()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    return-object p0

    .line 143
    :pswitch_a
    iget-object p0, p0, Lcom/eygraber/uri/uris/HierarchicalUri;->queryPart:Lcom/eygraber/uri/parts/Part;

    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/eygraber/uri/parts/AbstractPart;->getDecoded()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    return-object p0

    .line 150
    :pswitch_b
    sget-object v0, Lcom/eygraber/uri/parts/Part;->NULL:Lcom/eygraber/uri/parts/Part$EmptyPart;

    .line 151
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, v0}, Lcom/eygraber/uri/uris/HierarchicalUri;->appendSspTo(Ljava/lang/StringBuilder;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    invoke-static {p0}, Landroidx/room/util/DBUtil;->fromEncoded(Ljava/lang/String;)Lcom/eygraber/uri/parts/Part;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    return-object p0

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
