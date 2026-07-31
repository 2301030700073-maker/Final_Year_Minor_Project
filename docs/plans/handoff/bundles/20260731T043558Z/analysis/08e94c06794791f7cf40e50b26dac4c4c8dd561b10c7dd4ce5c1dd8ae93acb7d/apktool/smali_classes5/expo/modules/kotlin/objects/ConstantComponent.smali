.class public final Lexpo/modules/kotlin/objects/ConstantComponent;
.super Ljava/lang/Object;
.source "ConstantComponent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0019\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0010"
    }
    d2 = {
        "Lexpo/modules/kotlin/objects/ConstantComponent;",
        "",
        "name",
        "",
        "getter",
        "Lkotlin/Function0;",
        "<init>",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V",
        "getName",
        "()Ljava/lang/String;",
        "getGetter",
        "()Lkotlin/jvm/functions/Function0;",
        "attachToJSObject",
        "",
        "jsObject",
        "Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;",
        "expo-modules-core_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final getter:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$3jN7laOmK4QXZpE-jVQrR80e6Ww(Lexpo/modules/kotlin/objects/ConstantComponent;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lexpo/modules/kotlin/objects/ConstantComponent;->attachToJSObject$lambda$0(Lexpo/modules/kotlin/objects/ConstantComponent;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lexpo/modules/kotlin/objects/ConstantComponent;->name:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lexpo/modules/kotlin/objects/ConstantComponent;->getter:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method private static final attachToJSObject$lambda$0(Lexpo/modules/kotlin/objects/ConstantComponent;)Ljava/lang/Object;
    .locals 6

    .line 23
    iget-object p0, p0, Lexpo/modules/kotlin/objects/ConstantComponent;->getter:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    .line 24
    sget-object v0, Lexpo/modules/kotlin/types/JSTypeConverter;->INSTANCE:Lexpo/modules/kotlin/types/JSTypeConverter;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lexpo/modules/kotlin/types/JSTypeConverter;->convertToJSValue$default(Lexpo/modules/kotlin/types/JSTypeConverter;Ljava/lang/Object;Lexpo/modules/kotlin/types/JSTypeConverter$ContainerProvider;ZILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final attachToJSObject(Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;)V
    .locals 2

    const-string v0, "jsObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lexpo/modules/kotlin/objects/ConstantComponent$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lexpo/modules/kotlin/objects/ConstantComponent$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/kotlin/objects/ConstantComponent;)V

    .line 27
    iget-object v1, p0, Lexpo/modules/kotlin/objects/ConstantComponent;->name:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;->registerConstant(Ljava/lang/String;Lexpo/modules/kotlin/jni/JNINoArgsFunctionBody;)V

    return-void
.end method

.method public final getGetter()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lexpo/modules/kotlin/objects/ConstantComponent;->getter:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lexpo/modules/kotlin/objects/ConstantComponent;->name:Ljava/lang/String;

    return-object v0
.end method
