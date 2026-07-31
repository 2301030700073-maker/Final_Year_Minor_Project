.class public final Lcom/allproperty/android/consumer/modules/applesignin/FormDataInterceptor$Companion;
.super Ljava/lang/Object;
.source "FormDataInterceptor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allproperty/android/consumer/modules/applesignin/FormDataInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000b\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/allproperty/android/consumer/modules/applesignin/FormDataInterceptor$Companion;",
        "",
        "<init>",
        "()V",
        "NAME",
        "",
        "STATE",
        "ID_TOKEN",
        "AUTH_CODE",
        "FORM_DATA_SEPARATOR",
        "KEY_VALUE_SEPARATOR",
        "JS_TO_INJECT",
        "getJS_TO_INJECT",
        "()Ljava/lang/String;",
        "app_myPublicRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/allproperty/android/consumer/modules/applesignin/FormDataInterceptor$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getJS_TO_INJECT()Ljava/lang/String;
    .locals 1

    .line 40
    invoke-static {}, Lcom/allproperty/android/consumer/modules/applesignin/FormDataInterceptor;->access$getJS_TO_INJECT$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
