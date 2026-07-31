.class public abstract Lorg/jsoup/internal/Functions;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final FormSubmitTags:[Ljava/lang/String;

.field public static final IdentityMapFunction:Lorg/jsoup/nodes/Element$$ExternalSyntheticLambda1;

.field public static final MapFunction:Lorg/jsoup/nodes/Element$$ExternalSyntheticLambda1;

.field public static final SetFunction:Lorg/jsoup/nodes/Element$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lorg/jsoup/nodes/Element$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lorg/jsoup/nodes/Element$$ExternalSyntheticLambda1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/jsoup/internal/Functions;->SetFunction:Lorg/jsoup/nodes/Element$$ExternalSyntheticLambda1;

    .line 8
    .line 9
    new-instance v0, Lorg/jsoup/nodes/Element$$ExternalSyntheticLambda1;

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    invoke-direct {v0, v1}, Lorg/jsoup/nodes/Element$$ExternalSyntheticLambda1;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lorg/jsoup/internal/Functions;->MapFunction:Lorg/jsoup/nodes/Element$$ExternalSyntheticLambda1;

    .line 16
    .line 17
    new-instance v0, Lorg/jsoup/nodes/Element$$ExternalSyntheticLambda1;

    .line 18
    .line 19
    const/4 v1, 0x4

    .line 20
    invoke-direct {v0, v1}, Lorg/jsoup/nodes/Element$$ExternalSyntheticLambda1;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lorg/jsoup/internal/Functions;->IdentityMapFunction:Lorg/jsoup/nodes/Element$$ExternalSyntheticLambda1;

    .line 24
    .line 25
    const-string v0, "select"

    .line 26
    .line 27
    const-string v1, "textarea"

    .line 28
    .line 29
    const-string v2, "input"

    .line 30
    .line 31
    const-string v3, "keygen"

    .line 32
    .line 33
    const-string v4, "object"

    .line 34
    .line 35
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lorg/jsoup/internal/Functions;->FormSubmitTags:[Ljava/lang/String;

    .line 40
    .line 41
    return-void
.end method

.method public static lowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    const-string p0, ""

    .line 11
    .line 12
    return-object p0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/jsoup/internal/Functions;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
