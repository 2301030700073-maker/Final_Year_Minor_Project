.class public final Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field private zzNA:Z

.field private zzNB:I

.field private zzNC:Z

.field private zzND:Ljava/lang/String;

.field private final zzNE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/appdatasearch/Feature;",
            ">;"
        }
    .end annotation
.end field

.field private zzNF:Ljava/util/BitSet;

.field private zzNG:Ljava/lang/String;

.field private zzNz:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->mName:Ljava/lang/String;

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzNB:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzNE:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public zzJ(Z)Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzNA:Z

    return-object p0
.end method

.method public zzK(Z)Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzNC:Z

    return-object p0
.end method

.method public zzaj(I)Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzNF:Ljava/util/BitSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzNF:Ljava/util/BitSet;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzNF:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method

.method public zzbr(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzNz:Ljava/lang/String;

    return-object p0
.end method

.method public zzbs(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzNG:Ljava/lang/String;

    return-object p0
.end method

.method public zzkM()Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzNF:Ljava/util/BitSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzNF:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzNF:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    :goto_0
    if-ltz v1, :cond_1

    add-int/lit8 v3, v2, 0x1

    aput v1, v0, v2

    iget-object v2, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzNF:Ljava/util/BitSet;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    move-object v9, v0

    new-instance v0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    iget-object v2, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzNz:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzNA:Z

    iget v5, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzNB:I

    iget-boolean v6, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzNC:Z

    iget-object v7, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzND:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzNE:Ljava/util/List;

    iget-object v8, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzNE:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lcom/google/android/gms/appdatasearch/Feature;

    invoke-interface {v1, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, [Lcom/google/android/gms/appdatasearch/Feature;

    iget-object v10, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzNG:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZIZLjava/lang/String;[Lcom/google/android/gms/appdatasearch/Feature;[ILjava/lang/String;)V

    return-object v0
.end method
