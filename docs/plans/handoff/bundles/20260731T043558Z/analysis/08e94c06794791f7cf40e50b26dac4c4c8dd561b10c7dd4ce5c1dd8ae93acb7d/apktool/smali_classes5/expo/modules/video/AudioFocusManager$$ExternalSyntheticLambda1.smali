.class public final synthetic Lexpo/modules/video/AudioFocusManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lexpo/modules/video/AudioFocusManager;


# direct methods
.method public synthetic constructor <init>(Lexpo/modules/video/AudioFocusManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/video/AudioFocusManager$$ExternalSyntheticLambda1;->f$0:Lexpo/modules/video/AudioFocusManager;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lexpo/modules/video/AudioFocusManager$$ExternalSyntheticLambda1;->f$0:Lexpo/modules/video/AudioFocusManager;

    invoke-static {v0}, Lexpo/modules/video/AudioFocusManager;->$r8$lambda$55CttilMQVSByowah866Sv8663I(Lexpo/modules/video/AudioFocusManager;)Landroid/media/AudioManager;

    move-result-object v0

    return-object v0
.end method
