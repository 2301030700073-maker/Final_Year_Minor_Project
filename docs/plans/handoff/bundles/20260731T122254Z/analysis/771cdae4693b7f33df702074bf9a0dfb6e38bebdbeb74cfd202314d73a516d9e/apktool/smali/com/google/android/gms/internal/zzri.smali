.class public Lcom/google/android/gms/internal/zzri;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/zzrh<",
        "TM;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final tag:I

.field protected final type:I

.field protected final zzaVV:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final zzaVW:Z


# direct methods
.method private constructor <init>(ILjava/lang/Class;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "TT;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzri;->type:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzri;->zzaVV:Ljava/lang/Class;

    iput p3, p0, Lcom/google/android/gms/internal/zzri;->tag:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzri;->zzaVW:Z

    return-void
.end method

.method public static zza(ILjava/lang/Class;I)Lcom/google/android/gms/internal/zzri;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/google/android/gms/internal/zzrh<",
            "TM;>;T:",
            "Lcom/google/android/gms/internal/zzrn;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Lcom/google/android/gms/internal/zzri<",
            "TM;TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzri;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/internal/zzri;-><init>(ILjava/lang/Class;IZ)V

    return-object v0
.end method

.method private zzy(Ljava/util/List;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzrp;",
            ">;)TT;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzrp;

    iget-object v4, v3, Lcom/google/android/gms/internal/zzrp;->zzaWg:[B

    array-length v4, v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3, v0}, Lcom/google/android/gms/internal/zzri;->zza(Lcom/google/android/gms/internal/zzrp;Ljava/util/List;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzri;->zzaVV:Ljava/lang/Class;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzri;->zzaVV:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    if-ge v1, p1, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v1, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v2
.end method

.method private zzz(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzrp;",
            ">;)TT;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzrp;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzri;->zzaVV:Ljava/lang/Class;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzrp;->zzaWg:[B

    invoke-static {p1}, Lcom/google/android/gms/internal/zzrf;->zzz([B)Lcom/google/android/gms/internal/zzrf;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzri;->zzA(Lcom/google/android/gms/internal/zzrf;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected zzA(Lcom/google/android/gms/internal/zzrf;)Ljava/lang/Object;
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzri;->zzaVW:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzri;->zzaVV:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzri;->zzaVV:Ljava/lang/Class;

    :goto_0
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/zzri;->type:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    goto :goto_1

    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzrn;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzrf;->zza(Lcom/google/android/gms/internal/zzrn;)V

    return-object v1

    :pswitch_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzrn;

    iget v2, p0, Lcom/google/android/gms/internal/zzri;->tag:I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzrq;->zzkV(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/zzrf;->zza(Lcom/google/android/gms/internal/zzrn;I)V

    return-object v1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/gms/internal/zzri;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error reading extension field"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error creating instance of class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception p1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error creating instance of class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method zzQ(Ljava/lang/Object;)I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzri;->zzaVW:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzri;->zzR(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzri;->zzS(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected zzR(Ljava/lang/Object;)I
    .locals 4

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/zzri;->zzS(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method protected zzS(Ljava/lang/Object;)I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzri;->tag:I

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrq;->zzkV(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzri;->type:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/internal/zzri;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/zzrn;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzrg;->zzc(ILcom/google/android/gms/internal/zzrn;)I

    move-result p1

    return p1

    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/zzrn;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzrg;->zzb(ILcom/google/android/gms/internal/zzrn;)I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected zza(Lcom/google/android/gms/internal/zzrp;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzrp;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p1, Lcom/google/android/gms/internal/zzrp;->zzaWg:[B

    invoke-static {p1}, Lcom/google/android/gms/internal/zzrf;->zzz([B)Lcom/google/android/gms/internal/zzrf;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzri;->zzA(Lcom/google/android/gms/internal/zzrf;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzrg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzri;->zzaVW:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzri;->zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/zzrg;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzri;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/zzrg;)V

    return-void
.end method

.method protected zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/zzrg;)V
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/zzri;->tag:I

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzrg;->zzkN(I)V

    iget v0, p0, Lcom/google/android/gms/internal/zzri;->type:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    goto :goto_0

    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/zzrn;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzrg;->zzc(Lcom/google/android/gms/internal/zzrn;)V

    return-void

    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/zzrn;

    iget v0, p0, Lcom/google/android/gms/internal/zzri;->tag:I

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrq;->zzkV(I)I

    move-result v0

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzrg;->zzb(Lcom/google/android/gms/internal/zzrn;)V

    const/4 p1, 0x4

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/zzrg;->zzC(II)V

    return-void

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/gms/internal/zzri;->type:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/zzrg;)V
    .locals 3

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2, p2}, Lcom/google/android/gms/internal/zzri;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/zzrg;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method final zzx(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzrp;",
            ">;)TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzri;->zzaVW:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzri;->zzy(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzri;->zzz(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
