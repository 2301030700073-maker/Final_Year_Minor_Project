.class Lcom/android/contacts/quickcontact/QuickContactActivity$12;
.super Landroid/os/AsyncTask;
.source "QuickContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;->extractAndApplyTintFromPhotoViewAsynchronously()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

.field final synthetic val$imageViewDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1970
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    iput-object p2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->val$imageViewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;
    .locals 2

    .line 1974
    iget-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->val$imageViewDrawable:Landroid/graphics/drawable/Drawable;

    instance-of p1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$2000(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/model/Contact;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    .line 1975
    invoke-static {p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$2000(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/model/Contact;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getThumbnailPhotoBinaryData()[B

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    .line 1976
    invoke-static {p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$2000(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/model/Contact;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getThumbnailPhotoBinaryData()[B

    move-result-object p1

    array-length p1, p1

    if-lez p1, :cond_1

    .line 1980
    iget-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    .line 1981
    invoke-static {p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$2000(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/model/Contact;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getThumbnailPhotoBinaryData()[B

    move-result-object p1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    .line 1982
    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$2000(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/model/Contact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/model/Contact;->getThumbnailPhotoBinaryData()[B

    move-result-object v1

    array-length v1, v1

    .line 1980
    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1984
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$2600(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/graphics/Bitmap;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1986
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1700(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/util/MaterialColorMapUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/contacts/util/MaterialColorMapUtils;->calculatePrimaryAndSecondaryColor(I)Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1990
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1991
    throw v0

    .line 1993
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->val$imageViewDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, p1, Lcom/android/contacts/lettertiles/LetterTileDrawable;

    if-eqz v0, :cond_2

    .line 1994
    check-cast p1, Lcom/android/contacts/lettertiles/LetterTileDrawable;

    invoke-virtual {p1}, Lcom/android/contacts/lettertiles/LetterTileDrawable;->getColor()I

    move-result p1

    .line 1995
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1700(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/util/MaterialColorMapUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/contacts/util/MaterialColorMapUtils;->calculatePrimaryAndSecondaryColor(I)Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object p1

    return-object p1

    .line 1997
    :cond_2
    iget-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/contacts/util/MaterialColorMapUtils;->getDefaultPrimaryAndSecondaryColors(Landroid/content/res/Resources;)Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1970
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->doInBackground([Ljava/lang/Void;)Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;)V
    .locals 2

    .line 2002
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2003
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$2700(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2013
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->val$imageViewDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$2800(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/widget/QuickContactImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/widget/QuickContactImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 2014
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$2702(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z

    .line 2015
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1800(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1970
    check-cast p1, Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;

    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->onPostExecute(Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;)V

    return-void
.end method
