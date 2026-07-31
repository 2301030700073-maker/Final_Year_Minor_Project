.class public final Lcom/google/android/gms/plus/internal/model/people/PersonEntity;
.super Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;

# interfaces
.implements Lcom/google/android/gms/plus/model/people/Person;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/plus/internal/model/people/PersonEntity$UrlsEntity;,
        Lcom/google/android/gms/plus/internal/model/people/PersonEntity$PlacesLivedEntity;,
        Lcom/google/android/gms/plus/internal/model/people/PersonEntity$OrganizationsEntity;,
        Lcom/google/android/gms/plus/internal/model/people/PersonEntity$NameEntity;,
        Lcom/google/android/gms/plus/internal/model/people/PersonEntity$ImageEntity;,
        Lcom/google/android/gms/plus/internal/model/people/PersonEntity$CoverEntity;,
        Lcom/google/android/gms/plus/internal/model/people/PersonEntity$AgeRangeEntity;,
        Lcom/google/android/gms/plus/internal/model/people/PersonEntity$zza;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/plus/internal/model/people/zza;

.field private static final zzaHP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field final zzCY:I

.field zzF:Ljava/lang/String;

.field zzKI:Ljava/lang/String;

.field zzRA:Ljava/lang/String;

.field final zzaHQ:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field zzaIO:Ljava/lang/String;

.field zzaIP:Lcom/google/android/gms/plus/internal/model/people/PersonEntity$AgeRangeEntity;

.field zzaIQ:Ljava/lang/String;

.field zzaIR:Ljava/lang/String;

.field zzaIS:I

.field zzaIT:Lcom/google/android/gms/plus/internal/model/people/PersonEntity$CoverEntity;

.field zzaIU:Ljava/lang/String;

.field zzaIV:Lcom/google/android/gms/plus/internal/model/people/PersonEntity$ImageEntity;

.field zzaIW:Z

.field zzaIX:Lcom/google/android/gms/plus/internal/model/people/PersonEntity$NameEntity;

.field zzaIY:Ljava/lang/String;

.field zzaIZ:I

.field zzaJa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/plus/internal/model/people/PersonEntity$OrganizationsEntity;",
            ">;"
        }
    .end annotation
.end field

.field zzaJb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/plus/internal/model/people/PersonEntity$PlacesLivedEntity;",
            ">;"
        }
    .end annotation
.end field

.field zzaJc:I

.field zzaJd:I

.field zzaJe:Ljava/lang/String;

.field zzaJf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/plus/internal/model/people/PersonEntity$UrlsEntity;",
            ">;"
        }
    .end annotation
.end field

.field zzaJg:Z

.field zzadI:Ljava/lang/String;

.field zzsC:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/google/android/gms/plus/internal/model/people/zza;

    invoke-direct {v0}, Lcom/google/android/gms/plus/internal/model/people/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->CREATOR:Lcom/google/android/gms/plus/internal/model/people/zza;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHP:Ljava/util/HashMap;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHP:Ljava/util/HashMap;

    const-string v1, "aboutMe"

    const-string v2, "aboutMe"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzl(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHP:Ljava/util/HashMap;

    const-string v1, "ageRange"

    const-string v2, "ageRange"

    const-class v4, Lcom/google/android/gms/plus/internal/model/people/PersonEntity$AgeRangeEntity;

    const/4 v5, 0x3

    invoke-static {v2, v5, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zza(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHP:Ljava/util/HashMap;

    const-string v1, "birthday"

    const-string v2, "birthday"

    const/4 v4, 0x4

    invoke-static {v2, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzl(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHP:Ljava/util/HashMap;

    const-string v1, "braggingRights"

    const-string v2, "braggingRights"

    const/4 v6, 0x5

    invoke-static {v2, v6}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzl(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHP:Ljava/util/HashMap;

    const-string v1, "circledByCount"

    const-string v2, "circledByCount"

    const/4 v7, 0x6

    invoke-static {v2, v7}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzi(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHP:Ljava/util/HashMap;

    const-string v1, "cover"

    const-string v2, "cover"

    const-class v8, Lcom/google/android/gms/plus/internal/model/people/PersonEntity$CoverEntity;

    const/4 v9, 0x7

    invoke-static {v2, v9, v8}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zza(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHP:Ljava/util/HashMap;

    const-string v1, "currentLocation"

    const-string v2, "currentLocation"

    const/16 v8, 0x8

    invoke-static {v2, v8}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzl(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHP:Ljava/util/HashMap;

    const-string v1, "displayName"

    const-string v2, "displayName"

    const/16 v10, 0x9

    invoke-static {v2, v10}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzl(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHP:Ljava/util/HashMap;

    const-string v1, "gender"

    const-string v2, "gender"

    new-instance v10, Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    invoke-direct {v10}, Lcom/google/android/gms/common/server/converter/StringToIntConverter;-><init>()V

    const-string v11, "male"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->zzh(Ljava/lang/String;I)Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    move-result-object v10

    const-string v11, "female"

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v13}, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->zzh(Ljava/lang/String;I)Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    move-result-object v10

    const-string v11, "other"

    invoke-virtual {v10, v11, v3}, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->zzh(Ljava/lang/String;I)Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    move-result-object v10

    const/16 v11, 0xc

    invoke-static {v2, v11, v10, v12}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zza(Ljava/lang/String;ILcom/google/android/gms/common/server/response/FastJsonResponse$zza;Z)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHP:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    const/16 v10, 0xe

    invoke-static {v2, v10}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzl(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHP:Ljava/util/HashMap;

    const-string v1, "image"

    const-string v2, "image"

    const-class v10, Lcom/google/android/gms/plus/internal/model/people/PersonEntity$ImageEntity;

    const/16 v11, 0xf

    invoke-static {v2, v11, v10}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zza(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHP:Ljava/util/HashMap;

    const-string v1, "isPlusUser"

    const-string v2, "isPlusUser"

    const/16 v10, 0x10

    invoke-static {v2, v10}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzk(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHP:Ljava/util/HashMap;

    const-string v1, "language"

    const-string v2, "language"

    const/16 v10, 0x12

    invoke-static {v2, v10}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzl(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHP:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    const-class v10, Lcom/google/android/gms/plus/internal/model/people/PersonEntity$NameEntity;

    const/16 v11, 0x13

    invoke-static {v2, v11, v10}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zza(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHP:Ljava/util/HashMap;

    const-string v1, "nickname"

    const-string v2, "nickname"

    const/16 v10, 0x14

    invoke-static {v2, v10}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzl(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHP:Ljava/util/HashMap;

    const-string v1, "objectType"

    const-string v2, "objectType"

    new-instance v10, Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    invoke-direct {v10}, Lcom/google/android/gms/common/server/converter/StringToIntConverter;-><init>()V

    const-string v11, "person"

    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->zzh(Ljava/lang/String;I)Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    move-result-object v10

    const-string v11, "page"

    invoke-virtual {v10, v11, v13}, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->zzh(Ljava/lang/String;I)Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    move-result-object v10

    const/16 v11, 0x15

    invoke-static {v2, v11, v10, v12}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zza(Ljava/lang/String;ILcom/google/android/gms/common/server/response/FastJsonResponse$zza;Z)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHP:Ljava/util/HashMap;

    const-string v1, "organizations"

    const-string v2, "organizations"

    const-class v10, Lcom/google/android/gms/plus/internal/model/people/PersonEntity$OrganizationsEntity;

    const/16 v11, 0x16

    invoke-static {v2, v11, v10}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzb(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHP:Ljava/util/HashMap;

    const-string v1, "placesLived"

    const-string v2, "placesLived"

    const-class v10, Lcom/google/android/gms/plus/internal/model/people/PersonEntity$PlacesLivedEntity;

    const/16 v11, 0x17

    invoke-static {v2, v11, v10}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzb(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHP:Ljava/util/HashMap;

    const-string v1, "plusOneCount"

    const-string v2, "plusOneCount"

    const/16 v10, 0x18

    invoke-static {v2, v10}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzi(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHP:Ljava/util/HashMap;

    const-string v1, "relationshipStatus"

    const-string v2, "relationshipStatus"

    new-instance v10, Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    invoke-direct {v10}, Lcom/google/android/gms/common/server/converter/StringToIntConverter;-><init>()V

    const-string v11, "single"

    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->zzh(Ljava/lang/String;I)Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    move-result-object v10

    const-string v11, "in_a_relationship"

    invoke-virtual {v10, v11, v13}, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->zzh(Ljava/lang/String;I)Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    move-result-object v10

    const-string v11, "engaged"

    invoke-virtual {v10, v11, v3}, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->zzh(Ljava/lang/String;I)Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    move-result-object v3

    const-string v10, "married"

    invoke-virtual {v3, v10, v5}, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->zzh(Ljava/lang/String;I)Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    move-result-object v3

    const-string v5, "its_complicated"

    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->zzh(Ljava/lang/String;I)Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    move-result-object v3

    const-string v4, "open_relationship"

    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->zzh(Ljava/lang/String;I)Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    move-result-object v3

    const-string v4, "widowed"

    invoke-virtual {v3, v4, v7}, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->zzh(Ljava/lang/String;I)Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    move-result-object v3

    const-string v4, "in_domestic_partnership"

    invoke-virtual {v3, v4, v9}, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->zzh(Ljava/lang/String;I)Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    move-result-object v3

    const-string v4, "in_civil_union"

    invoke-virtual {v3, v4, v8}, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->zzh(Ljava/lang/String;I)Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    move-result-object v3

    const/16 v4, 0x19

    invoke-static {v2, v4, v3, v12}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zza(Ljava/lang/String;ILcom/google/android/gms/common/server/response/FastJsonResponse$zza;Z)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHP:Ljava/util/HashMap;

    const-string v1, "tagline"

    const-string v2, "tagline"

    const/16 v3, 0x1a

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzl(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHP:Ljava/util/HashMap;

    const-string v1, "url"

    const-string v2, "url"

    const/16 v3, 0x1b

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzl(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHP:Ljava/util/HashMap;

    const-string v1, "urls"

    const-string v2, "urls"

    const-class v3, Lcom/google/android/gms/plus/internal/model/people/PersonEntity$UrlsEntity;

    const/16 v4, 0x1c

    invoke-static {v2, v4, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzb(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHP:Ljava/util/HashMap;

    const-string v1, "verified"

    const-string v2, "verified"

    const/16 v3, 0x1d

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzk(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzCY:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHQ:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/model/people/PersonEntity$ImageEntity;ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzCY:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHQ:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzadI:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput-object p2, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzKI:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput-object p3, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaIV:Lcom/google/android/gms/plus/internal/model/people/PersonEntity$ImageEntity;

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput p4, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaIZ:I

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput-object p5, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzF:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/lang/String;Lcom/google/android/gms/plus/internal/model/people/PersonEntity$AgeRangeEntity;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/plus/internal/model/people/PersonEntity$CoverEntity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/plus/internal/model/people/PersonEntity$ImageEntity;ZLjava/lang/String;Lcom/google/android/gms/plus/internal/model/people/PersonEntity$NameEntity;Ljava/lang/String;ILjava/util/List;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/plus/internal/model/people/PersonEntity$AgeRangeEntity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/gms/plus/internal/model/people/PersonEntity$CoverEntity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/plus/internal/model/people/PersonEntity$ImageEntity;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/plus/internal/model/people/PersonEntity$NameEntity;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/plus/internal/model/people/PersonEntity$OrganizationsEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/plus/internal/model/people/PersonEntity$PlacesLivedEntity;",
            ">;II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/plus/internal/model/people/PersonEntity$UrlsEntity;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHQ:Ljava/util/Set;

    move/from16 v2, p2

    iput v2, v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzCY:I

    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaIO:Ljava/lang/String;

    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaIP:Lcom/google/android/gms/plus/internal/model/people/PersonEntity$AgeRangeEntity;

    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaIQ:Ljava/lang/String;

    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaIR:Ljava/lang/String;

    move/from16 v7, p7

    iput v7, v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaIS:I

    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaIT:Lcom/google/android/gms/plus/internal/model/people/PersonEntity$CoverEntity;

    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaIU:Ljava/lang/String;

    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzadI:Ljava/lang/String;

    move/from16 v11, p11

    iput v11, v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzsC:I

    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzKI:Ljava/lang/String;

    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaIV:Lcom/google/android/gms/plus/internal/model/people/PersonEntity$ImageEntity;

    move/from16 v14, p14

    iput-boolean v14, v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaIW:Z

    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzRA:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaIX:Lcom/google/android/gms/plus/internal/model/people/PersonEntity$NameEntity;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaIY:Ljava/lang/String;

    move/from16 v1, p18

    iput v1, v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaIZ:I

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaJa:Ljava/util/List;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaJb:Ljava/util/List;

    move/from16 v1, p21

    iput v1, v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaJc:I

    move/from16 v1, p22

    iput v1, v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaJd:I

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaJe:Ljava/lang/String;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzF:Ljava/lang/String;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaJf:Ljava/util/List;

    move/from16 v1, p26

    iput-boolean v1, v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaJg:Z

    return-void
.end method

.method public static zzp([B)Lcom/google/android/gms/plus/internal/model/people/PersonEntity;
    .locals 3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->CREATOR:Lcom/google/android/gms/plus/internal/model/people/zza;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/internal/model/people/zza;->zzfM(Landroid/os/Parcel;)Lcom/google/android/gms/plus/internal/model/people/PersonEntity;

    move-result-object p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->CREATOR:Lcom/google/android/gms/plus/internal/model/people/zza;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;

    sget-object v3, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHP:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    invoke-virtual {p0, v4}, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zza(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zza(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v4}, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzb(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4}, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzb(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_3
    return v1

    :cond_4
    invoke-virtual {v2, v4}, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zza(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v1

    :cond_5
    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzxJ()Lcom/google/android/gms/plus/internal/model/people/PersonEntity;

    move-result-object v0

    return-object v0
.end method

.method public getAboutMe()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaIO:Ljava/lang/String;

    return-object v0
.end method

.method public getAgeRange()Lcom/google/android/gms/plus/model/people/Person$AgeRange;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaIP:Lcom/google/android/gms/plus/internal/model/people/PersonEntity$AgeRangeEntity;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaIQ:Ljava/lang/String;

    return-object v0
.end method

.method public getBraggingRights()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaIR:Ljava/lang/String;

    return-object v0
.end method

.method public getCircledByCount()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaIS:I

    return v0
.end method

.method public getCover()Lcom/google/android/gms/plus/model/people/Person$Cover;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaIT:Lcom/google/android/gms/plus/internal/model/people/PersonEntity$CoverEntity;

    return-object v0
.end method

.method public getCurrentLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaIU:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzadI:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzsC:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzKI:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Lcom/google/android/gms/plus/model/people/Person$Image;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaIV:Lcom/google/android/gms/plus/internal/model/people/PersonEntity$ImageEntity;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzRA:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Lcom/google/android/gms/plus/model/people/Person$Name;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaIX:Lcom/google/android/gms/plus/internal/model/people/PersonEntity$NameEntity;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaIY:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaIZ:I

    return v0
.end method

.method public getOrganizations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/plus/model/people/Person$Organizations;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaJa:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPlacesLived()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/plus/model/people/Person$PlacesLived;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaJb:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPlusOneCount()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaJc:I

    return v0
.end method

.method public getRelationshipStatus()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaJd:I

    return v0
.end method

.method public getTagline()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaJe:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzF:Ljava/lang/String;

    return-object v0
.end method

.method public getUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/plus/model/people/Person$Urls;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaJf:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasAboutMe()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHQ:Ljava/util/Set;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasAgeRange()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHQ:Ljava/util/Set;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasBirthday()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHQ:Ljava/util/Set;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasBraggingRights()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHQ:Ljava/util/Set;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasCircledByCount()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHQ:Ljava/util/Set;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasCover()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHQ:Ljava/util/Set;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasCurrentLocation()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasDisplayName()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasGender()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasImage()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasIsPlusUser()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasLanguage()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasNickname()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasObjectType()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasOrganizations()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasPlacesLived()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasPlusOneCount()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasRelationshipStatus()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasTagline()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasUrl()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasUrls()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasVerified()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHP:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zza(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzot()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0, v2}, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzb(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isDataValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPlusUser()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaIW:Z

    return v0
.end method

.method public isVerified()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaJg:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->CREATOR:Lcom/google/android/gms/plus/internal/model/people/zza;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/plus/internal/model/people/zza;->zza(Lcom/google/android/gms/plus/internal/model/people/PersonEntity;Landroid/os/Parcel;I)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHQ:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzot()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected zzb(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzot()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown safe parcelable id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzot()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-boolean p1, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaJg:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_2
    iget-object p1, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaJf:Ljava/util/List;

    return-object p1

    :pswitch_3
    iget-object p1, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzF:Ljava/lang/String;

    return-object p1

    :pswitch_4
    iget-object p1, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaJe:Ljava/lang/String;

    return-object p1

    :pswitch_5
    iget p1, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaJd:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_6
    iget p1, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaJc:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_7
    iget-object p1, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaJb:Ljava/util/List;

    return-object p1

    :pswitch_8
    iget-object p1, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaJa:Ljava/util/List;

    return-object p1

    :pswitch_9
    iget p1, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaIZ:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_a
    iget-object p1, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaIY:Ljava/lang/String;

    return-object p1

    :pswitch_b
    iget-object p1, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaIX:Lcom/google/android/gms/plus/internal/model/people/PersonEntity$NameEntity;

    return-object p1

    :pswitch_c
    iget-object p1, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzRA:Ljava/lang/String;

    return-object p1

    :pswitch_d
    iget-boolean p1, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaIW:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_e
    iget-object p1, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaIV:Lcom/google/android/gms/plus/internal/model/people/PersonEntity$ImageEntity;

    return-object p1

    :pswitch_f
    iget-object p1, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzKI:Ljava/lang/String;

    return-object p1

    :pswitch_10
    iget p1, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzsC:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_11
    iget-object p1, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzadI:Ljava/lang/String;

    return-object p1

    :pswitch_12
    iget-object p1, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaIU:Ljava/lang/String;

    return-object p1

    :pswitch_13
    iget-object p1, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaIT:Lcom/google/android/gms/plus/internal/model/people/PersonEntity$CoverEntity;

    return-object p1

    :pswitch_14
    iget p1, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaIS:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_15
    iget-object p1, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaIR:Ljava/lang/String;

    return-object p1

    :pswitch_16
    iget-object p1, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaIQ:Ljava/lang/String;

    return-object p1

    :pswitch_17
    iget-object p1, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaIP:Lcom/google/android/gms/plus/internal/model/people/PersonEntity$AgeRangeEntity;

    return-object p1

    :pswitch_18
    iget-object p1, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaIO:Ljava/lang/String;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic zzom()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzxF()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public zzxF()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<",
            "**>;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaHP:Ljava/util/HashMap;

    return-object v0
.end method

.method public zzxJ()Lcom/google/android/gms/plus/internal/model/people/PersonEntity;
    .locals 0

    return-object p0
.end method
