.class public final Lcom/fsck/k9/contacts/ContactPhotoLoader;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final contactRepository:Lapp/k9mail/core/android/common/contact/ContactRepository;

.field public final contentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lapp/k9mail/core/android/common/contact/ContactRepository;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/contacts/ContactPhotoLoader;->contentResolver:Landroid/content/ContentResolver;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/contacts/ContactPhotoLoader;->contactRepository:Lapp/k9mail/core/android/common/contact/ContactRepository;

    .line 7
    .line 8
    return-void
.end method
