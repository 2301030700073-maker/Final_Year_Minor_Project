.class Lcom/android/insecurebankv2/DoLogin$RequestTask$1;
.super Ljava/lang/Object;
.source "DoLogin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/insecurebankv2/DoLogin$RequestTask;->trackUserLogins()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/insecurebankv2/DoLogin$RequestTask;


# direct methods
.method constructor <init>(Lcom/android/insecurebankv2/DoLogin$RequestTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/insecurebankv2/DoLogin$RequestTask;

    .line 164
    iput-object p1, p0, Lcom/android/insecurebankv2/DoLogin$RequestTask$1;->this$1:Lcom/android/insecurebankv2/DoLogin$RequestTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 169
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 170
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "name"

    iget-object v2, p0, Lcom/android/insecurebankv2/DoLogin$RequestTask$1;->this$1:Lcom/android/insecurebankv2/DoLogin$RequestTask;

    iget-object v2, v2, Lcom/android/insecurebankv2/DoLogin$RequestTask;->this$0:Lcom/android/insecurebankv2/DoLogin;

    iget-object v2, v2, Lcom/android/insecurebankv2/DoLogin;->username:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcom/android/insecurebankv2/DoLogin$RequestTask$1;->this$1:Lcom/android/insecurebankv2/DoLogin$RequestTask;

    iget-object v1, v1, Lcom/android/insecurebankv2/DoLogin$RequestTask;->this$0:Lcom/android/insecurebankv2/DoLogin;

    invoke-virtual {v1}, Lcom/android/insecurebankv2/DoLogin;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/insecurebankv2/TrackUserContentProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 174
    .local v1, "uri":Landroid/net/Uri;
    return-void
.end method
