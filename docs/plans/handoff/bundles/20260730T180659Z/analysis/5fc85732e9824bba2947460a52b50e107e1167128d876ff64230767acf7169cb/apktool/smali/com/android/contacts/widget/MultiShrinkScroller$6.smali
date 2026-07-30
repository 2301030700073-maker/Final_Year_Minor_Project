.class Lcom/android/contacts/widget/MultiShrinkScroller$6;
.super Ljava/lang/Object;
.source "MultiShrinkScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/widget/MultiShrinkScroller;->initialize(Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;ZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

.field final synthetic val$maximumHeaderTextSize:I

.field final synthetic val$shouldUpdateNameViewHeight:Z


# direct methods
.method constructor <init>(Lcom/android/contacts/widget/MultiShrinkScroller;ZI)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    iput-boolean p2, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->val$shouldUpdateNameViewHeight:Z

    iput p3, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->val$maximumHeaderTextSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 343
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$300(Lcom/android/contacts/widget/MultiShrinkScroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$500(Lcom/android/contacts/widget/MultiShrinkScroller;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$402(Lcom/android/contacts/widget/MultiShrinkScroller;I)I

    .line 346
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$400(Lcom/android/contacts/widget/MultiShrinkScroller;)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f19999a    # 0.6f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$602(Lcom/android/contacts/widget/MultiShrinkScroller;I)I

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$300(Lcom/android/contacts/widget/MultiShrinkScroller;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    goto :goto_0

    .line 350
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v1}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$500(Lcom/android/contacts/widget/MultiShrinkScroller;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 349
    :goto_0
    invoke-static {v0, v1}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$702(Lcom/android/contacts/widget/MultiShrinkScroller;I)I

    .line 351
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$800(Lcom/android/contacts/widget/MultiShrinkScroller;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/widget/MultiShrinkScroller;->setHeaderHeight(I)V

    .line 352
    iget-boolean v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->val$shouldUpdateNameViewHeight:Z

    if-eqz v0, :cond_2

    .line 353
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$1000(Lcom/android/contacts/widget/MultiShrinkScroller;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$902(Lcom/android/contacts/widget/MultiShrinkScroller;I)I

    .line 354
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$1200(Lcom/android/contacts/widget/MultiShrinkScroller;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$1102(Lcom/android/contacts/widget/MultiShrinkScroller;I)I

    .line 356
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 358
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 360
    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    .line 361
    invoke-static {v2}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$1100(Lcom/android/contacts/widget/MultiShrinkScroller;)I

    move-result v3

    mul-int v3, v3, v0

    div-int/2addr v3, v1

    .line 360
    invoke-static {v2, v3}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$1302(Lcom/android/contacts/widget/MultiShrinkScroller;I)I

    .line 363
    :cond_2
    iget v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->val$maximumHeaderTextSize:I

    if-lez v0, :cond_3

    .line 364
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v1, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$902(Lcom/android/contacts/widget/MultiShrinkScroller;I)I

    .line 366
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$300(Lcom/android/contacts/widget/MultiShrinkScroller;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 367
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$402(Lcom/android/contacts/widget/MultiShrinkScroller;I)I

    .line 368
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$400(Lcom/android/contacts/widget/MultiShrinkScroller;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$1402(Lcom/android/contacts/widget/MultiShrinkScroller;I)I

    .line 369
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$400(Lcom/android/contacts/widget/MultiShrinkScroller;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$602(Lcom/android/contacts/widget/MultiShrinkScroller;I)I

    .line 372
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    .line 373
    invoke-static {v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$500(Lcom/android/contacts/widget/MultiShrinkScroller;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 374
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v1}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$400(Lcom/android/contacts/widget/MultiShrinkScroller;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 375
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v1}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$400(Lcom/android/contacts/widget/MultiShrinkScroller;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v2}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$1500(Lcom/android/contacts/widget/MultiShrinkScroller;)F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 376
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v1}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$500(Lcom/android/contacts/widget/MultiShrinkScroller;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    .line 380
    invoke-static {v1}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$1000(Lcom/android/contacts/widget/MultiShrinkScroller;)Landroid/view/View;

    move-result-object v1

    .line 381
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 382
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v2

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const v0, 0x800053

    .line 384
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 385
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$1000(Lcom/android/contacts/widget/MultiShrinkScroller;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 389
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$1200(Lcom/android/contacts/widget/MultiShrinkScroller;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v1}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$500(Lcom/android/contacts/widget/MultiShrinkScroller;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    .line 390
    invoke-static {v2}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$1600(Lcom/android/contacts/widget/MultiShrinkScroller;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 389
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 391
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$1700(Lcom/android/contacts/widget/MultiShrinkScroller;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v1}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$500(Lcom/android/contacts/widget/MultiShrinkScroller;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    .line 392
    invoke-static {v2}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$1600(Lcom/android/contacts/widget/MultiShrinkScroller;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 391
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 395
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$1800(Lcom/android/contacts/widget/MultiShrinkScroller;)V

    .line 396
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$1900(Lcom/android/contacts/widget/MultiShrinkScroller;)V

    .line 397
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$2000(Lcom/android/contacts/widget/MultiShrinkScroller;)V

    return-void
.end method
