.class final Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getImageSourceFile$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt;->getImageSourceFile(Landroid/content/Context;Lcoil3/ImageLoader;Ljava/lang/Object;Lcom/skydoves/landscapist/DataSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.skydoves.landscapist.coil3.Coil3ImageSourceFileKt$getImageSourceFile$2"
    f = "Coil3ImageSourceFile.kt"
    l = {
        0x4a
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $imageLoader:Lcoil3/ImageLoader;

.field final synthetic $imageModel:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/content/Context;Lcoil3/ImageLoader;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Lcoil3/ImageLoader;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getImageSourceFile$2;->$imageModel:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getImageSourceFile$2;->$context:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getImageSourceFile$2;->$imageLoader:Lcoil3/ImageLoader;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Lkotlin/coroutines/Continuation;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getImageSourceFile$2;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getImageSourceFile$2;->$imageModel:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getImageSourceFile$2;->$context:Landroid/content/Context;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getImageSourceFile$2;->$imageLoader:Lcoil3/ImageLoader;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, p0, p2}, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getImageSourceFile$2;-><init>(Ljava/lang/Object;Landroid/content/Context;Lcoil3/ImageLoader;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getImageSourceFile$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getImageSourceFile$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getImageSourceFile$2;

    .line 6
    .line 7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getImageSourceFile$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getImageSourceFile$2;->label:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    goto/16 :goto_1

    .line 13
    .line 14
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 15
    .line 16
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object v2

    .line 20
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getImageSourceFile$2;->$imageModel:Ljava/lang/Object;

    .line 24
    .line 25
    instance-of v0, p1, Ljava/io/File;

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    move-object p0, p1

    .line 30
    check-cast p0, Ljava/io/File;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    move-object v2, p1

    .line 45
    :cond_2
    check-cast v2, Ljava/io/File;

    .line 46
    .line 47
    return-object v2

    .line 48
    :cond_3
    instance-of v0, p1, Landroid/net/Uri;

    .line 49
    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    iget-object p0, p0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getImageSourceFile$2;->$context:Landroid/content/Context;

    .line 53
    .line 54
    check-cast p1, Landroid/net/Uri;

    .line 55
    .line 56
    invoke-static {p0, p1}, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt;->access$resolveUriToFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :cond_4
    instance-of v0, p1, Ljava/lang/String;

    .line 62
    .line 63
    if-eqz v0, :cond_a

    .line 64
    .line 65
    check-cast p1, Ljava/lang/String;

    .line 66
    .line 67
    const-string v0, "file://"

    .line 68
    .line 69
    const/4 v3, 0x0

    .line 70
    invoke-static {p1, v0, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    iget-object v4, p0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getImageSourceFile$2;->$imageModel:Ljava/lang/Object;

    .line 75
    .line 76
    if-eqz p1, :cond_5

    .line 77
    .line 78
    check-cast v4, Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {v4, v0}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    new-instance p1, Ljava/io/File;

    .line 85
    .line 86
    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    if-eqz p0, :cond_a

    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    if-eqz p0, :cond_a

    .line 100
    .line 101
    return-object p1

    .line 102
    :cond_5
    check-cast v4, Ljava/lang/String;

    .line 103
    .line 104
    const-string p1, "content://"

    .line 105
    .line 106
    invoke-static {v4, p1, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-eqz p1, :cond_6

    .line 111
    .line 112
    iget-object p1, p0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getImageSourceFile$2;->$context:Landroid/content/Context;

    .line 113
    .line 114
    iget-object p0, p0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getImageSourceFile$2;->$imageModel:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast p0, Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    invoke-static {p1, p0}, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt;->access$resolveUriToFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    return-object p0

    .line 130
    :cond_6
    iget-object p1, p0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getImageSourceFile$2;->$imageModel:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast p1, Ljava/lang/String;

    .line 133
    .line 134
    const-string v0, "http://"

    .line 135
    .line 136
    invoke-static {p1, v0, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-nez p1, :cond_8

    .line 141
    .line 142
    iget-object p1, p0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getImageSourceFile$2;->$imageModel:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast p1, Ljava/lang/String;

    .line 145
    .line 146
    const-string v0, "https://"

    .line 147
    .line 148
    invoke-static {p1, v0, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-eqz p1, :cond_7

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_7
    new-instance p1, Ljava/io/File;

    .line 156
    .line 157
    iget-object p0, p0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getImageSourceFile$2;->$imageModel:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast p0, Ljava/lang/String;

    .line 160
    .line 161
    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 165
    .line 166
    .line 167
    move-result p0

    .line 168
    if-eqz p0, :cond_a

    .line 169
    .line 170
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    .line 171
    .line 172
    .line 173
    move-result p0

    .line 174
    if-eqz p0, :cond_a

    .line 175
    .line 176
    return-object p1

    .line 177
    :cond_8
    :goto_0
    iget-object p1, p0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getImageSourceFile$2;->$context:Landroid/content/Context;

    .line 178
    .line 179
    iget-object v0, p0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getImageSourceFile$2;->$imageLoader:Lcoil3/ImageLoader;

    .line 180
    .line 181
    iget-object v2, p0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getImageSourceFile$2;->$imageModel:Ljava/lang/Object;

    .line 182
    .line 183
    check-cast v2, Ljava/lang/String;

    .line 184
    .line 185
    iput v1, p0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getImageSourceFile$2;->label:I

    .line 186
    .line 187
    invoke-static {p1, v0, v2, p0}, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt;->access$getFromDiskCacheOrDownload(Landroid/content/Context;Lcoil3/ImageLoader;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 192
    .line 193
    if-ne p1, p0, :cond_9

    .line 194
    .line 195
    return-object p0

    .line 196
    :cond_9
    :goto_1
    check-cast p1, Ljava/io/File;

    .line 197
    .line 198
    return-object p1

    .line 199
    :cond_a
    return-object v2
.end method
