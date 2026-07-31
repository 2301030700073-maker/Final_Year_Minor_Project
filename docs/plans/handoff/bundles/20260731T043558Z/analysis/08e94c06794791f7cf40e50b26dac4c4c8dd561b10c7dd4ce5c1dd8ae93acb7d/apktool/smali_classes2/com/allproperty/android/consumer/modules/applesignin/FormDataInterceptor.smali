.class public final Lcom/allproperty/android/consumer/modules/applesignin/FormDataInterceptor;
.super Ljava/lang/Object;
.source "FormDataInterceptor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allproperty/android/consumer/modules/applesignin/FormDataInterceptor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFormDataInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FormDataInterceptor.kt\ncom/allproperty/android/consumer/modules/applesignin/FormDataInterceptor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,59:1\n1#2:60\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0003H\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/allproperty/android/consumer/modules/applesignin/FormDataInterceptor;",
        "",
        "expectedState",
        "",
        "callback",
        "Lkotlin/Function1;",
        "Lcom/allproperty/android/consumer/modules/applesignin/LoginResult;",
        "",
        "<init>",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V",
        "processFormData",
        "formData",
        "Companion",
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


# static fields
.field private static final AUTH_CODE:Ljava/lang/String; = "code"

.field public static final Companion:Lcom/allproperty/android/consumer/modules/applesignin/FormDataInterceptor$Companion;

.field private static final FORM_DATA_SEPARATOR:Ljava/lang/String; = "|"

.field private static final ID_TOKEN:Ljava/lang/String; = "id_token"

.field private static final JS_TO_INJECT:Ljava/lang/String;

.field private static final KEY_VALUE_SEPARATOR:Ljava/lang/String; = "="

.field public static final NAME:Ljava/lang/String; = "FormInterceptorInterface"

.field private static final STATE:Ljava/lang/String; = "state"


# instance fields
.field private final callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/allproperty/android/consumer/modules/applesignin/LoginResult;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final expectedState:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/allproperty/android/consumer/modules/applesignin/FormDataInterceptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/allproperty/android/consumer/modules/applesignin/FormDataInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/allproperty/android/consumer/modules/applesignin/FormDataInterceptor;->Companion:Lcom/allproperty/android/consumer/modules/applesignin/FormDataInterceptor$Companion;

    .line 56
    const-string v0, "function parseForm(form){\n    var values = \'\';\n    for(var i=0 ; i< form.elements.length; i++){\n        values +=\n            form.elements[i].name +\n            \'=\' +\n            form.elements[i].value +\n            \'|\'\n    }\n    window.FormInterceptorInterface.processFormData(values);\n}\n\nfor(var i=0 ; i< document.forms.length ; i++){\n    parseForm(document.forms[i]);\n}"

    sput-object v0, Lcom/allproperty/android/consumer/modules/applesignin/FormDataInterceptor;->JS_TO_INJECT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/allproperty/android/consumer/modules/applesignin/LoginResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "expectedState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/allproperty/android/consumer/modules/applesignin/FormDataInterceptor;->expectedState:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/allproperty/android/consumer/modules/applesignin/FormDataInterceptor;->callback:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$getJS_TO_INJECT$cp()Ljava/lang/String;
    .locals 1

    .line 5
    sget-object v0, Lcom/allproperty/android/consumer/modules/applesignin/FormDataInterceptor;->JS_TO_INJECT:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final processFormData(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "formData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 p1, 0x1

    new-array v2, p1, [Ljava/lang/String;

    const-string/jumbo p1, "|"

    const/4 v0, 0x0

    aput-object p1, v2, v0

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v6, "state"

    invoke-static {v5, v6, v0, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_0
    check-cast v2, Ljava/lang/String;

    .line 14
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    const-string v7, "id_token"

    invoke-static {v6, v7, v0, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_3
    move-object v5, v4

    :goto_1
    check-cast v5, Ljava/lang/String;

    .line 15
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    const-string v7, "code"

    invoke-static {v6, v7, v0, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_5
    move-object v1, v4

    :goto_2
    check-cast v1, Ljava/lang/String;

    if-eqz v5, :cond_7

    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    .line 18
    const-string p1, "="

    invoke-static {v2, p1, v4, v3, v4}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {v5, p1, v4, v3, v4}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-static {v1, p1, v4, v3, v4}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 22
    iget-object v1, p0, Lcom/allproperty/android/consumer/modules/applesignin/FormDataInterceptor;->expectedState:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 23
    iget-object v0, p0, Lcom/allproperty/android/consumer/modules/applesignin/FormDataInterceptor;->callback:Lkotlin/jvm/functions/Function1;

    new-instance v1, Lcom/allproperty/android/consumer/modules/applesignin/LoginResult$Success;

    invoke-direct {v1, v2, p1}, Lcom/allproperty/android/consumer/modules/applesignin/LoginResult$Success;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 25
    :cond_6
    iget-object p1, p0, Lcom/allproperty/android/consumer/modules/applesignin/FormDataInterceptor;->callback:Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/allproperty/android/consumer/modules/applesignin/LoginResult$Failure;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "state does not match"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Lcom/allproperty/android/consumer/modules/applesignin/LoginResult$Failure;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 28
    :cond_7
    iget-object p1, p0, Lcom/allproperty/android/consumer/modules/applesignin/FormDataInterceptor;->callback:Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/allproperty/android/consumer/modules/applesignin/LoginResult$Failure;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "token not returned"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Lcom/allproperty/android/consumer/modules/applesignin/LoginResult$Failure;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    return-void
.end method
