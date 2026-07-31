.class public Lcom/google/android/gms/internal/zzhm;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgd;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzhm$zzg;,
        Lcom/google/android/gms/internal/zzhm$zze;,
        Lcom/google/android/gms/internal/zzhm$zzd;,
        Lcom/google/android/gms/internal/zzhm$zzf;,
        Lcom/google/android/gms/internal/zzhm$zzc;,
        Lcom/google/android/gms/internal/zzhm$zzb;,
        Lcom/google/android/gms/internal/zzhm$zza;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzhm$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzhm;-><init>()V

    return-void
.end method

.method public static zzK(I)Lcom/google/android/gms/internal/zzhm;
    .locals 1

    const/16 v0, 0x13

    if-lt p0, v0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/zzhm$zzg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzhm$zzg;-><init>()V

    return-object p0

    :cond_0
    const/16 v0, 0x12

    if-lt p0, v0, :cond_1

    new-instance p0, Lcom/google/android/gms/internal/zzhm$zze;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzhm$zze;-><init>()V

    return-object p0

    :cond_1
    const/16 v0, 0x11

    if-lt p0, v0, :cond_2

    new-instance p0, Lcom/google/android/gms/internal/zzhm$zzd;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzhm$zzd;-><init>()V

    return-object p0

    :cond_2
    const/16 v0, 0x10

    if-lt p0, v0, :cond_3

    new-instance p0, Lcom/google/android/gms/internal/zzhm$zzf;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzhm$zzf;-><init>()V

    return-object p0

    :cond_3
    const/16 v0, 0xe

    if-lt p0, v0, :cond_4

    new-instance p0, Lcom/google/android/gms/internal/zzhm$zzc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzhm$zzc;-><init>()V

    return-object p0

    :cond_4
    const/16 v0, 0xb

    if-lt p0, v0, :cond_5

    new-instance p0, Lcom/google/android/gms/internal/zzhm$zzb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzhm$zzb;-><init>()V

    return-object p0

    :cond_5
    const/16 v0, 0x9

    if-lt p0, v0, :cond_6

    new-instance p0, Lcom/google/android/gms/internal/zzhm$zza;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzhm$zza;-><init>()V

    return-object p0

    :cond_6
    new-instance p0, Lcom/google/android/gms/internal/zzhm;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzhm;-><init>()V

    return-object p0
.end method


# virtual methods
.method public getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public zza(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public zza(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public zza(Landroid/app/DownloadManager$Request;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public zza(Landroid/content/Context;Landroid/webkit/WebSettings;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public zza(Landroid/view/Window;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public zza(Landroid/webkit/WebView;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public zzb(Lcom/google/android/gms/internal/zzid;Z)Lcom/google/android/gms/internal/zzie;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzie;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzie;-><init>(Lcom/google/android/gms/internal/zzid;Z)V

    return-object v0
.end method

.method public zzb(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzhm;->zza(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public zzb(Landroid/webkit/WebView;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public zze(Landroid/net/Uri;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/net/Uri;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v1, 0x0

    :cond_2
    const/16 v2, 0x26

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    :cond_3
    const/16 v4, 0x3d

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-gt v4, v2, :cond_4

    if-ne v4, v3, :cond_5

    :cond_4
    move v4, v2

    :cond_5
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_2

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public zzf(Lcom/google/android/gms/internal/zzid;)Landroid/webkit/WebChromeClient;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public zzgq()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public zzgr()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public zzgs()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public zzgt()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public zzk(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public zzl(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public zzm(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
