.class public final Lcom/fsck/k9/ui/compose/RecipientCircleImageView;
.super Lde/hdodenhof/circleimageview/CircleImageView;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public onSetImageDrawableListener:Lcom/fsck/k9/ui/compose/OnSetImageDrawableListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/ui/compose/RecipientCircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/ui/compose/RecipientCircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lde/hdodenhof/circleimageview/CircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x2

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 7
    .line 8
    if-eqz p4, :cond_1

    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/ui/compose/RecipientCircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final getOnSetImageDrawableListener()Lcom/fsck/k9/ui/compose/OnSetImageDrawableListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/compose/RecipientCircleImageView;->onSetImageDrawableListener:Lcom/fsck/k9/ui/compose/OnSetImageDrawableListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lde/hdodenhof/circleimageview/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/fsck/k9/ui/compose/RecipientCircleImageView;->onSetImageDrawableListener:Lcom/fsck/k9/ui/compose/OnSetImageDrawableListener;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    check-cast p0, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lcom/fsck/k9/view/RecipientSelectView;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->redrawTokens()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final setOnSetImageDrawableListener(Lcom/fsck/k9/ui/compose/OnSetImageDrawableListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/ui/compose/RecipientCircleImageView;->onSetImageDrawableListener:Lcom/fsck/k9/ui/compose/OnSetImageDrawableListener;

    .line 2
    .line 3
    return-void
.end method
