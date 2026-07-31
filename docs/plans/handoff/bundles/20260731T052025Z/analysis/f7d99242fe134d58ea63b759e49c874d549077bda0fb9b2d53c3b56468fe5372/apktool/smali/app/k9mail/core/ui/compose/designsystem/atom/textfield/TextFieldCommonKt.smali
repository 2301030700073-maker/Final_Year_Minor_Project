.class public abstract Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldCommonKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final LINE_BREAK:Lkotlin/text/Regex;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlin/text/Regex;

    .line 2
    .line 3
    const-string v1, "[\\r\\n]"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldCommonKt;->LINE_BREAK:Lkotlin/text/Regex;

    .line 9
    .line 10
    return-void
.end method

.method public static final selectLabel(Ljava/lang/String;Z)Landroidx/compose/runtime/internal/ComposableLambdaImpl;
    .locals 2

    .line 1
    if-nez p0, :cond_1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return-object p0

    .line 8
    :cond_1
    :goto_0
    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldLabelKt$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    invoke-direct {v0, p0, p1}, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldLabelKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 14
    .line 15
    const p1, -0x68ffae70

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-direct {p0, p1, v0, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 20
    .line 21
    .line 22
    return-object p0
.end method
