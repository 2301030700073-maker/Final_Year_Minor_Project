.class public Lcom/android/contacts/vcard/ExportRequest;
.super Ljava/lang/Object;
.source "ExportRequest.java"


# instance fields
.field public final destUri:Landroid/net/Uri;

.field public final exportType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/vcard/ExportRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/contacts/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    .line 33
    iput-object p2, p0, Lcom/android/contacts/vcard/ExportRequest;->exportType:Ljava/lang/String;

    return-void
.end method
