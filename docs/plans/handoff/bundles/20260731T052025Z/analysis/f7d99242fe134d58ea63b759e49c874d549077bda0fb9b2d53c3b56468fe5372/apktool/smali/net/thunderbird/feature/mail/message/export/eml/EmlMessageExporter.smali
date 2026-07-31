.class public final Lnet/thunderbird/feature/mail/message/export/eml/EmlMessageExporter;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final fileManager:Lnet/thunderbird/core/file/DefaultFileManager;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/file/DefaultFileManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/export/eml/EmlMessageExporter;->fileManager:Lnet/thunderbird/core/file/DefaultFileManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final export(Lcom/eygraber/uri/uris/StringUri;Lcom/eygraber/uri/uris/StringUri;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p3, Lnet/thunderbird/feature/mail/message/export/eml/EmlMessageExporter$export$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lnet/thunderbird/feature/mail/message/export/eml/EmlMessageExporter$export$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/thunderbird/feature/mail/message/export/eml/EmlMessageExporter$export$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lnet/thunderbird/feature/mail/message/export/eml/EmlMessageExporter$export$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/thunderbird/feature/mail/message/export/eml/EmlMessageExporter$export$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lnet/thunderbird/feature/mail/message/export/eml/EmlMessageExporter$export$1;-><init>(Lnet/thunderbird/feature/mail/message/export/eml/EmlMessageExporter;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lnet/thunderbird/feature/mail/message/export/eml/EmlMessageExporter$export$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lnet/thunderbird/feature/mail/message/export/eml/EmlMessageExporter$export$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v3, :cond_1

    .line 34
    .line 35
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 40
    .line 41
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object v2

    .line 45
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iput v3, v0, Lnet/thunderbird/feature/mail/message/export/eml/EmlMessageExporter$export$1;->label:I

    .line 49
    .line 50
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/export/eml/EmlMessageExporter;->fileManager:Lnet/thunderbird/core/file/DefaultFileManager;

    .line 51
    .line 52
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/core/file/DefaultFileManager;->copy(Lcom/eygraber/uri/Uri;Lcom/eygraber/uri/Uri;)Lnet/thunderbird/core/outcome/Outcome;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 57
    .line 58
    if-ne p3, p0, :cond_3

    .line 59
    .line 60
    return-object p0

    .line 61
    :cond_3
    :goto_1
    check-cast p3, Lnet/thunderbird/core/outcome/Outcome;

    .line 62
    .line 63
    instance-of p0, p3, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 64
    .line 65
    if-eqz p0, :cond_4

    .line 66
    .line 67
    new-instance p0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 68
    .line 69
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 70
    .line 71
    invoke-direct {p0, p1}, Lnet/thunderbird/core/outcome/Outcome$Success;-><init>(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    return-object p0

    .line 75
    :cond_4
    instance-of p0, p3, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 76
    .line 77
    if-eqz p0, :cond_9

    .line 78
    .line 79
    new-instance p0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 80
    .line 81
    check-cast p3, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 82
    .line 83
    iget-object p1, p3, Lnet/thunderbird/core/outcome/Outcome$Failure;->error:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast p1, Lnet/thunderbird/core/file/FileOperationError;

    .line 86
    .line 87
    instance-of p2, p1, Lnet/thunderbird/core/file/FileOperationError$Unavailable;

    .line 88
    .line 89
    if-eqz p2, :cond_5

    .line 90
    .line 91
    new-instance p2, Lnet/thunderbird/feature/mail/message/export/MessageExportError$Unavailable;

    .line 92
    .line 93
    check-cast p1, Lnet/thunderbird/core/file/FileOperationError$Unavailable;

    .line 94
    .line 95
    iget-object v0, p1, Lnet/thunderbird/core/file/FileOperationError$Unavailable;->uri:Lcom/eygraber/uri/Uri;

    .line 96
    .line 97
    iget-object p1, p1, Lnet/thunderbird/core/file/FileOperationError$Unavailable;->message:Ljava/lang/String;

    .line 98
    .line 99
    invoke-direct {p2, v0, p1}, Lnet/thunderbird/feature/mail/message/export/MessageExportError$Unavailable;-><init>(Lcom/eygraber/uri/Uri;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_5
    instance-of p2, p1, Lnet/thunderbird/core/file/FileOperationError$ReadFailed;

    .line 104
    .line 105
    if-eqz p2, :cond_6

    .line 106
    .line 107
    new-instance p2, Lnet/thunderbird/feature/mail/message/export/MessageExportError$Io;

    .line 108
    .line 109
    check-cast p1, Lnet/thunderbird/core/file/FileOperationError$ReadFailed;

    .line 110
    .line 111
    iget-object p1, p1, Lnet/thunderbird/core/file/FileOperationError$ReadFailed;->message:Ljava/lang/String;

    .line 112
    .line 113
    invoke-direct {p2, p1}, Lnet/thunderbird/feature/mail/message/export/MessageExportError$Io;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_6
    instance-of p2, p1, Lnet/thunderbird/core/file/FileOperationError$WriteFailed;

    .line 118
    .line 119
    if-eqz p2, :cond_7

    .line 120
    .line 121
    new-instance p2, Lnet/thunderbird/feature/mail/message/export/MessageExportError$Io;

    .line 122
    .line 123
    check-cast p1, Lnet/thunderbird/core/file/FileOperationError$WriteFailed;

    .line 124
    .line 125
    iget-object p1, p1, Lnet/thunderbird/core/file/FileOperationError$WriteFailed;->message:Ljava/lang/String;

    .line 126
    .line 127
    invoke-direct {p2, p1}, Lnet/thunderbird/feature/mail/message/export/MessageExportError$Io;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_7
    instance-of p2, p1, Lnet/thunderbird/core/file/FileOperationError$Unknown;

    .line 132
    .line 133
    if-eqz p2, :cond_8

    .line 134
    .line 135
    new-instance p2, Lnet/thunderbird/feature/mail/message/export/MessageExportError$Unknown;

    .line 136
    .line 137
    check-cast p1, Lnet/thunderbird/core/file/FileOperationError$Unknown;

    .line 138
    .line 139
    iget-object p1, p1, Lnet/thunderbird/core/file/FileOperationError$Unknown;->message:Ljava/lang/String;

    .line 140
    .line 141
    invoke-direct {p2, p1}, Lnet/thunderbird/feature/mail/message/export/MessageExportError$Unknown;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :goto_2
    iget-object p1, p3, Lnet/thunderbird/core/outcome/Outcome$Failure;->cause:Ljava/lang/Object;

    .line 145
    .line 146
    invoke-direct {p0, p2, p1}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    return-object p0

    .line 150
    :cond_8
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 151
    .line 152
    .line 153
    return-object v2

    .line 154
    :cond_9
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 155
    .line 156
    .line 157
    return-object v2
.end method
