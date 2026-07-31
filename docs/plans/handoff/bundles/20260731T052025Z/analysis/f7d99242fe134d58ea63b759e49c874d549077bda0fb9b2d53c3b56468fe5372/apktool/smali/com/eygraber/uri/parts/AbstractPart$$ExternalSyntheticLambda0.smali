.class public final synthetic Lcom/eygraber/uri/parts/AbstractPart$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/eygraber/uri/parts/AbstractPart;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/eygraber/uri/parts/AbstractPart;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/eygraber/uri/parts/AbstractPart$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/eygraber/uri/parts/AbstractPart$$ExternalSyntheticLambda0;->f$0:Lcom/eygraber/uri/parts/AbstractPart;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/eygraber/uri/parts/AbstractPart$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/eygraber/uri/parts/AbstractPart$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/eygraber/uri/parts/AbstractPart;Ljava/lang/String;)V
    .locals 1

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Lcom/eygraber/uri/parts/AbstractPart$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/eygraber/uri/parts/AbstractPart$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p2, p0, Lcom/eygraber/uri/parts/AbstractPart$$ExternalSyntheticLambda0;->f$0:Lcom/eygraber/uri/parts/AbstractPart;

    iput-object p3, p0, Lcom/eygraber/uri/parts/AbstractPart$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/eygraber/uri/parts/AbstractPart$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/eygraber/uri/parts/AbstractPart$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/eygraber/uri/parts/AbstractPart$$ExternalSyntheticLambda0;->f$0:Lcom/eygraber/uri/parts/AbstractPart;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/eygraber/uri/parts/AbstractPart$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget-object v0, Lcom/eygraber/uri/NotCachedHolder;->NotCached:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Lcom/eygraber/uri/parts/AbstractPart;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :cond_0
    return-object p0

    .line 25
    :pswitch_0
    iget-boolean v0, v2, Lcom/eygraber/uri/parts/AbstractPart;->wasEncodedCached:Z

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    sget-object v0, Lcom/eygraber/uri/NotCachedHolder;->NotCached:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    :cond_1
    sget-object p0, Lcom/eygraber/uri/UriCodec;->lowercaseAsciiAlphaRange:Lkotlin/ranges/CharRange;

    .line 38
    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-static {v1}, Lcom/eygraber/uri/UriCodec;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    :cond_3
    :goto_0
    return-object p0

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
