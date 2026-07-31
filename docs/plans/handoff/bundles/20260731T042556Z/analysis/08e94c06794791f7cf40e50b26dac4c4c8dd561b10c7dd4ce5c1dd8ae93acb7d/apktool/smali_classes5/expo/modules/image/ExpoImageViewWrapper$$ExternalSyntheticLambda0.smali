.class public final synthetic Lexpo/modules/image/ExpoImageViewWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lexpo/modules/image/ExpoImageViewWrapper;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lexpo/modules/image/ImageViewWrapperTarget;

.field public final synthetic f$3:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Lexpo/modules/image/ExpoImageViewWrapper;ZLexpo/modules/image/ImageViewWrapperTarget;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/image/ExpoImageViewWrapper$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/image/ExpoImageViewWrapper;

    iput-boolean p2, p0, Lexpo/modules/image/ExpoImageViewWrapper$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lexpo/modules/image/ExpoImageViewWrapper$$ExternalSyntheticLambda0;->f$2:Lexpo/modules/image/ImageViewWrapperTarget;

    iput-object p4, p0, Lexpo/modules/image/ExpoImageViewWrapper$$ExternalSyntheticLambda0;->f$3:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/image/ExpoImageViewWrapper;

    iget-boolean v1, p0, Lexpo/modules/image/ExpoImageViewWrapper$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v2, p0, Lexpo/modules/image/ExpoImageViewWrapper$$ExternalSyntheticLambda0;->f$2:Lexpo/modules/image/ImageViewWrapperTarget;

    iget-object v3, p0, Lexpo/modules/image/ExpoImageViewWrapper$$ExternalSyntheticLambda0;->f$3:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, v3}, Lexpo/modules/image/ExpoImageViewWrapper;->$r8$lambda$xsrFE27K0pxfLh4eilM19BMbTmY(Lexpo/modules/image/ExpoImageViewWrapper;ZLexpo/modules/image/ImageViewWrapperTarget;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
