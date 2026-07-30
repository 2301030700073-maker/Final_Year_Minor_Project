.class public final Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$OnCreate$1;
.super Ljava/lang/Object;
.source "ModuleDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


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
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModuleDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder$OnCreate$1\n+ 2 ClipboardModule.kt\nexpo/modules/clipboard/ClipboardModule\n*L\n1#1,110:1\n114#2,3:111\n*E\n"
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

    iput-object p1, p0, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$OnCreate$1;->this$0:Lexpo/modules/clipboard/ClipboardModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 110
    invoke-virtual {p0}, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$OnCreate$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 111
    iget-object v0, p0, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$OnCreate$1;->this$0:Lexpo/modules/clipboard/ClipboardModule;

    new-instance v1, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;

    iget-object v2, p0, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$OnCreate$1;->this$0:Lexpo/modules/clipboard/ClipboardModule;

    invoke-direct {v1, v2}, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;-><init>(Lexpo/modules/clipboard/ClipboardModule;)V

    invoke-static {v0, v1}, Lexpo/modules/clipboard/ClipboardModule;->access$setClipboardEventEmitter$p(Lexpo/modules/clipboard/ClipboardModule;Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;)V

    .line 112
    iget-object v0, p0, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$OnCreate$1;->this$0:Lexpo/modules/clipboard/ClipboardModule;

    invoke-static {v0}, Lexpo/modules/clipboard/ClipboardModule;->access$getClipboardEventEmitter$p(Lexpo/modules/clipboard/ClipboardModule;)Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "clipboardEventEmitter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;->attachListener()Ljava/lang/Object;

    return-void
.end method
