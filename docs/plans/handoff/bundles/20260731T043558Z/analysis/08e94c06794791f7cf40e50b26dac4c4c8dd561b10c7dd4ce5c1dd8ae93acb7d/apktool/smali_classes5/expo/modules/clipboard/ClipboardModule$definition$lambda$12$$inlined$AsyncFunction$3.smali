.class public final Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$3;
.super Ljava/lang/Object;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/clipboard/ClipboardModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "[",
        "Ljava/lang/Object;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$6\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 ClipboardModule.kt\nexpo/modules/clipboard/ClipboardModule\n*L\n1#1,611:1\n11#2:612\n41#3,5:613\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$6\n*L\n247#1:612\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lexpo/modules/clipboard/ClipboardModule;


# direct methods
.method public constructor <init>(Lexpo/modules/clipboard/ClipboardModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$3;->this$0:Lexpo/modules/clipboard/ClipboardModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 246
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$3;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "<destruct>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 246
    aget-object p1, p1, v0

    .line 248
    check-cast p1, Lexpo/modules/clipboard/GetStringOptions;

    .line 613
    iget-object v0, p0, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$3;->this$0:Lexpo/modules/clipboard/ClipboardModule;

    invoke-static {v0}, Lexpo/modules/clipboard/ClipboardModule;->access$getClipboardManager(Lexpo/modules/clipboard/ClipboardModule;)Landroid/content/ClipboardManager;

    move-result-object v1

    invoke-static {v0, v1}, Lexpo/modules/clipboard/ClipboardModule;->access$getFirstItem(Lexpo/modules/clipboard/ClipboardModule;Landroid/content/ClipboardManager;)Landroid/content/ClipData$Item;

    move-result-object v0

    .line 614
    invoke-virtual {p1}, Lexpo/modules/clipboard/GetStringOptions;->getPreferredFormat()Lexpo/modules/clipboard/StringFormat;

    move-result-object p1

    sget-object v1, Lexpo/modules/clipboard/ClipboardModule$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lexpo/modules/clipboard/StringFormat;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    if-eqz v0, :cond_2

    .line 616
    iget-object p1, p0, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$3;->this$0:Lexpo/modules/clipboard/ClipboardModule;

    invoke-static {p1}, Lexpo/modules/clipboard/ClipboardModule;->access$getContext(Lexpo/modules/clipboard/ClipboardModule;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipData$Item;->coerceToHtmlText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 614
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    if-eqz v0, :cond_2

    .line 615
    iget-object p1, p0, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$3;->this$0:Lexpo/modules/clipboard/ClipboardModule;

    invoke-static {p1}, Lexpo/modules/clipboard/ClipboardModule;->access$getContext(Lexpo/modules/clipboard/ClipboardModule;)Landroid/content/Context;

    move-result-object p1

    invoke-static {v0, p1}, Lexpo/modules/clipboard/ClipboardModuleKt;->access$coerceToPlainText(Landroid/content/ClipData$Item;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    :goto_0
    if-nez v2, :cond_3

    .line 617
    const-string v2, ""

    :cond_3
    return-object v2
.end method
