.class Lcom/google/android/gms/tagmanager/zzay;
.super Lcom/google/android/gms/tagmanager/zzak;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/zzay$zza;
    }
.end annotation


# static fields
.field private static final ID:Ljava/lang/String;

.field private static final zzaLE:Ljava/lang/String;

.field private static final zzaLW:Ljava/lang/String;

.field private static final zzaLX:Ljava/lang/String;

.field private static final zzaLY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzad;->zzbM:Lcom/google/android/gms/internal/zzad;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzad;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzay;->ID:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzae;->zzdw:Lcom/google/android/gms/internal/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzae;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzay;->zzaLE:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzae;->zzfu:Lcom/google/android/gms/internal/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzae;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzay;->zzaLW:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzae;->zzfy:Lcom/google/android/gms/internal/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzae;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzay;->zzaLX:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzae;->zzeR:Lcom/google/android/gms/internal/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzae;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzay;->zzaLY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    sget-object v0, Lcom/google/android/gms/tagmanager/zzay;->ID:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/tagmanager/zzay;->zzaLE:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzak;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private zza(Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzay$zza;Ljava/util/Set;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/zzay$zza;",
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/tagmanager/zzay$1;->zzaLZ:[I

    invoke-virtual {p2}, Lcom/google/android/gms/tagmanager/zzay$zza;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    return-object p1

    :pswitch_0
    const-string p2, "\\"

    const-string v0, "\\\\"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Character;

    invoke-virtual {p3}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1

    :pswitch_1
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdj;->zzeQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    const-string p3, "Joiner: unsupported encoding"

    invoke-static {p3, p2}, Lcom/google/android/gms/tagmanager/zzbg;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private zza(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzay$zza;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/zzay$zza;",
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/gms/tagmanager/zzay;->zza(Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzay$zza;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private zza(Ljava/util/Set;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public zzE(Ljava/util/Map;)Lcom/google/android/gms/internal/zzag$zza;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzag$zza;",
            ">;)",
            "Lcom/google/android/gms/internal/zzag$zza;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/tagmanager/zzay;->zzaLE:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzag$zza;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdf;->zzzQ()Lcom/google/android/gms/internal/zzag$zza;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v1, Lcom/google/android/gms/tagmanager/zzay;->zzaLW:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzag$zza;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzdf;->zzg(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    sget-object v2, Lcom/google/android/gms/tagmanager/zzay;->zzaLX:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzag$zza;

    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzdf;->zzg(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const-string v2, "="

    :goto_1
    sget-object v3, Lcom/google/android/gms/tagmanager/zzay$zza;->zzaMa:Lcom/google/android/gms/tagmanager/zzay$zza;

    sget-object v4, Lcom/google/android/gms/tagmanager/zzay;->zzaLY:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzag$zza;

    const/4 v4, 0x0

    if-eqz p1, :cond_5

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdf;->zzg(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "url"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/google/android/gms/tagmanager/zzay$zza;->zzaMb:Lcom/google/android/gms/tagmanager/zzay$zza;

    goto :goto_2

    :cond_3
    const-string v3, "backslash"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/google/android/gms/tagmanager/zzay$zza;->zzaMc:Lcom/google/android/gms/tagmanager/zzay$zza;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v4, v1}, Lcom/google/android/gms/tagmanager/zzay;->zza(Ljava/util/Set;Ljava/lang/String;)V

    invoke-direct {p0, v4, v2}, Lcom/google/android/gms/tagmanager/zzay;->zza(Ljava/util/Set;Ljava/lang/String;)V

    const/16 p1, 0x5c

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-interface {v4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Joiner: unsupported escape type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzbg;->zzaz(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdf;->zzzQ()Lcom/google/android/gms/internal/zzag$zza;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Lcom/google/android/gms/internal/zzag$zza;->type:I

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdf;->zzg(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, v3, v4}, Lcom/google/android/gms/tagmanager/zzay;->zza(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzay$zza;Ljava/util/Set;)V

    goto :goto_5

    :goto_3
    :pswitch_0
    iget-object v5, v0, Lcom/google/android/gms/internal/zzag$zza;->zziT:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v5, v5

    if-ge v6, v5, :cond_8

    if-lez v6, :cond_6

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v5, v0, Lcom/google/android/gms/internal/zzag$zza;->zziT:[Lcom/google/android/gms/internal/zzag$zza;

    aget-object v5, v5, v6

    invoke-static {v5}, Lcom/google/android/gms/tagmanager/zzdf;->zzg(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, v0, Lcom/google/android/gms/internal/zzag$zza;->zziU:[Lcom/google/android/gms/internal/zzag$zza;

    aget-object v7, v7, v6

    invoke-static {v7}, Lcom/google/android/gms/tagmanager/zzdf;->zzg(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1, v5, v3, v4}, Lcom/google/android/gms/tagmanager/zzay;->zza(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzay$zza;Ljava/util/Set;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, v7, v3, v4}, Lcom/google/android/gms/tagmanager/zzay;->zza(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzay$zza;Ljava/util/Set;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :pswitch_1
    iget-object v0, v0, Lcom/google/android/gms/internal/zzag$zza;->zziS:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v2, v0

    const/4 v5, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x1

    :goto_4
    if-ge v5, v2, :cond_8

    aget-object v8, v0, v5

    if-nez v7, :cond_7

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-static {v8}, Lcom/google/android/gms/tagmanager/zzdf;->zzg(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1, v7, v3, v4}, Lcom/google/android/gms/tagmanager/zzay;->zza(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzay$zza;Ljava/util/Set;)V

    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x0

    goto :goto_4

    :cond_8
    :goto_5
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdf;->zzI(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzag$zza;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public zzyh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
