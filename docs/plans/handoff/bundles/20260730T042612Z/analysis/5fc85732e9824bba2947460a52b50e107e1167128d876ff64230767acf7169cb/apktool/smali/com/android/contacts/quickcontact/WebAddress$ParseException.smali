.class public Lcom/android/contacts/quickcontact/WebAddress$ParseException;
.super Ljava/lang/Exception;
.source "WebAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/WebAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParseException"
.end annotation


# instance fields
.field public response:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/contacts/quickcontact/WebAddress;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/WebAddress;Ljava/lang/String;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/android/contacts/quickcontact/WebAddress$ParseException;->this$0:Lcom/android/contacts/quickcontact/WebAddress;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 142
    iput-object p2, p0, Lcom/android/contacts/quickcontact/WebAddress$ParseException;->response:Ljava/lang/String;

    return-void
.end method
