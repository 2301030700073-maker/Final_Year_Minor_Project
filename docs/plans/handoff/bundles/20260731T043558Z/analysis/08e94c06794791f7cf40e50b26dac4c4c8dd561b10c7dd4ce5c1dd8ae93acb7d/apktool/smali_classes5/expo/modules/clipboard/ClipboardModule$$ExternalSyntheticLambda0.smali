.class public final synthetic Lexpo/modules/clipboard/ClipboardModule$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lexpo/modules/clipboard/ClipboardModule;


# direct methods
.method public synthetic constructor <init>(Lexpo/modules/clipboard/ClipboardModule;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/clipboard/ClipboardModule$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/clipboard/ClipboardModule;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lexpo/modules/clipboard/ClipboardModule$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/clipboard/ClipboardModule;

    invoke-static {v0}, Lexpo/modules/clipboard/ClipboardModule;->$r8$lambda$os2ZqQOuc3go9ftQEZ_3vNrdAVw(Lexpo/modules/clipboard/ClipboardModule;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
