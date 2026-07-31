.class Lcom/google/android/gms/internal/zzfd$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfd;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzAu:Ljava/lang/String;

.field final synthetic zzAv:Ljava/lang/String;

.field final synthetic zzAw:Lcom/google/android/gms/internal/zzfd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfd$1;->zzAw:Lcom/google/android/gms/internal/zzfd;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfd$1;->zzAu:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfd$1;->zzAv:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfd$1;->zzAw:Lcom/google/android/gms/internal/zzfd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfd;->zzeZ()Landroid/webkit/WebView;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/internal/zzfd$1$1;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzfd$1$1;-><init>(Lcom/google/android/gms/internal/zzfd$1;Landroid/webkit/WebView;)V

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfd$1;->zzAw:Lcom/google/android/gms/internal/zzfd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfd;->zzAt:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfd$1;->zzAu:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfd$1;->zzAv:Ljava/lang/String;

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Fetching assets finished."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    return-void
.end method
