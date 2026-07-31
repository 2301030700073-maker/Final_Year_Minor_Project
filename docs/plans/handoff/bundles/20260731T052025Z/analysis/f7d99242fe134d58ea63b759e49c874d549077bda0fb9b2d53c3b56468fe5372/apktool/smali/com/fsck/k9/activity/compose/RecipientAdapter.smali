.class public final Lcom/fsck/k9/activity/compose/RecipientAdapter;
.super Landroid/widget/BaseAdapter;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/widget/Filterable;


# instance fields
.field public final context:Landroid/content/Context;

.field public highlight:Ljava/lang/String;

.field public recipients:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientAdapter;->context:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method public static setContactPhotoOrPlaceholder(Landroid/widget/ImageView;Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V
    .locals 6

    .line 1
    const-class v0, Lcom/fsck/k9/contacts/ContactPictureLoader;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/fsck/k9/contacts/ContactPictureLoader;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object v1, p1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->photoThumbnailUri:Landroid/net/Uri;

    .line 16
    .line 17
    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy$2;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy$2;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 44
    .line 45
    invoke-virtual {p1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy$2;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 56
    .line 57
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_0
    iget-object p1, p1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->address:Lcom/fsck/k9/mail/Address;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    new-instance v3, Lcom/fsck/k9/contacts/ContactImage;

    .line 75
    .line 76
    iget-object v4, v0, Lcom/fsck/k9/contacts/ContactPictureLoader;->backgroundCacheId:Ljava/lang/String;

    .line 77
    .line 78
    iget-object v0, v0, Lcom/fsck/k9/contacts/ContactPictureLoader;->contactLetterBitmapCreator:Lcom/fsck/k9/contacts/ContactLetterBitmapCreator;

    .line 79
    .line 80
    const/4 v5, 0x1

    .line 81
    invoke-direct {v3, v5, v4, v0, p1}, Lcom/fsck/k9/contacts/ContactImage;-><init>(ZLjava/lang/String;Lcom/fsck/k9/contacts/ContactLetterBitmapCreator;Lcom/fsck/k9/mail/Address;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestManager;->load(Lcom/fsck/k9/contacts/ContactImage;)Lcom/bumptech/glide/RequestBuilder;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy$2;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 99
    .line 100
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientAdapter;->recipients:Ljava/util/List;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final getFilter()Landroid/widget/Filter;
    .locals 1

    .line 1
    new-instance v0, Landroidx/cursoradapter/widget/CursorFilter;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/cursoradapter/widget/CursorFilter;-><init>(Lcom/fsck/k9/activity/compose/RecipientAdapter;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientAdapter;->recipients:Ljava/util/List;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 12
    .line 13
    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    .line 1
    int-to-long p0, p1

    .line 2
    return-wide p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientAdapter;->context:Landroid/content/Context;

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    const v2, 0x7f0c0382

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    new-instance p3, Lcom/fsck/k9/activity/compose/RecipientAdapter$RecipientTokenHolder;

    .line 18
    .line 19
    invoke-direct {p3, p2}, Lcom/fsck/k9/activity/compose/RecipientAdapter$RecipientTokenHolder;-><init>(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p3, p0, Lcom/fsck/k9/activity/compose/RecipientAdapter;->recipients:Ljava/util/List;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-nez p3, :cond_1

    .line 29
    .line 30
    move-object p1, v2

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 37
    .line 38
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    check-cast p3, Lcom/fsck/k9/activity/compose/RecipientAdapter$RecipientTokenHolder;

    .line 43
    .line 44
    iget-object v3, p3, Lcom/fsck/k9/activity/compose/RecipientAdapter$RecipientTokenHolder;->name:Lcom/google/android/material/textview/MaterialTextView;

    .line 45
    .line 46
    iget-object v4, p3, Lcom/fsck/k9/activity/compose/RecipientAdapter$RecipientTokenHolder;->cryptoStatus:Landroid/widget/ImageView;

    .line 47
    .line 48
    iget-object v5, p1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->address:Lcom/fsck/k9/mail/Address;

    .line 49
    .line 50
    iget-object v5, v5, Lcom/fsck/k9/mail/Address;->personal:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-eqz v5, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    iget-object v2, p1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->address:Lcom/fsck/k9/mail/Address;

    .line 60
    .line 61
    iget-object v2, v2, Lcom/fsck/k9/mail/Address;->personal:Ljava/lang/String;

    .line 62
    .line 63
    :goto_1
    if-eqz v2, :cond_3

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    const v2, 0x7f120652

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    :goto_2
    invoke-virtual {p0, v2}, Lcom/fsck/k9/activity/compose/RecipientAdapter;->highlightText(Ljava/lang/String;)Landroid/text/Spannable;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    iget-object v1, p1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->address:Lcom/fsck/k9/mail/Address;

    .line 81
    .line 82
    iget-object v1, v1, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 83
    .line 84
    iget-object v2, p3, Lcom/fsck/k9/activity/compose/RecipientAdapter$RecipientTokenHolder;->email:Lcom/google/android/material/textview/MaterialTextView;

    .line 85
    .line 86
    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/compose/RecipientAdapter;->highlightText(Ljava/lang/String;)Landroid/text/Spannable;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    iget-object p0, p3, Lcom/fsck/k9/activity/compose/RecipientAdapter$RecipientTokenHolder;->photo:Landroid/widget/ImageView;

    .line 94
    .line 95
    invoke-static {p0, p1}, Lcom/fsck/k9/activity/compose/RecipientAdapter;->setContactPhotoOrPlaceholder(Landroid/widget/ImageView;Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V

    .line 96
    .line 97
    .line 98
    iget p0, p1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->cryptoStatus:I

    .line 99
    .line 100
    invoke-static {p0}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->ordinal(I)I

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    const/4 p1, 0x1

    .line 105
    if-eq p0, p1, :cond_5

    .line 106
    .line 107
    const/4 p1, 0x2

    .line 108
    if-eq p0, p1, :cond_4

    .line 109
    .line 110
    const/4 p1, 0x3

    .line 111
    if-eq p0, p1, :cond_4

    .line 112
    .line 113
    return-object p2

    .line 114
    :cond_4
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    .line 116
    .line 117
    return-object p2

    .line 118
    :cond_5
    const/16 p0, 0x8

    .line 119
    .line 120
    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    return-object p2
.end method

.method public final highlightText(Ljava/lang/String;)Landroid/text/Spannable;
    .locals 5

    .line 1
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientAdapter;->highlight:Ljava/lang/String;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const/16 v2, 0x12

    .line 15
    .line 16
    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/fsck/k9/activity/compose/RecipientAdapter;->context:Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const v3, 0x1060012

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    const/16 v4, 0x21

    .line 57
    .line 58
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    :goto_1
    return-object v0
.end method
