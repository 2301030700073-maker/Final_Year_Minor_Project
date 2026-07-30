.class public Lcom/android/contacts/list/PhoneNumberListAdapter$PhoneQuery;
.super Ljava/lang/Object;
.source "PhoneNumberListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/PhoneNumberListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneQuery"
.end annotation


# static fields
.field public static final PROJECTION_ALTERNATIVE:[Ljava/lang/String;

.field public static final PROJECTION_ALTERNATIVE_INTERNAL:[Ljava/lang/String;

.field public static final PROJECTION_PRIMARY:[Ljava/lang/String;

.field public static final PROJECTION_PRIMARY_INTERNAL:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "_id"

    const-string v1, "data2"

    const-string v2, "data3"

    const-string v3, "data1"

    const-string v4, "contact_id"

    const-string v5, "lookup"

    const-string v6, "photo_id"

    const-string v7, "display_name"

    const-string v8, "photo_thumb_uri"

    .line 99
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_PRIMARY_INTERNAL:[Ljava/lang/String;

    .line 114
    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 115
    invoke-static {}, Lcom/android/contacts/compat/CompatUtils;->isMarshmallowCompatible()Z

    move-result v1

    const-string v2, "carrier_presence"

    if-eqz v1, :cond_0

    .line 116
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/contacts/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_PRIMARY:[Ljava/lang/String;

    const-string v3, "_id"

    const-string v4, "data2"

    const-string v5, "data3"

    const-string v6, "data1"

    const-string v7, "contact_id"

    const-string v8, "lookup"

    const-string v9, "photo_id"

    const-string v10, "display_name_alt"

    const-string v11, "photo_thumb_uri"

    .line 121
    filled-new-array/range {v3 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_ALTERNATIVE_INTERNAL:[Ljava/lang/String;

    .line 136
    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 137
    invoke-static {}, Lcom/android/contacts/compat/CompatUtils;->isMarshmallowCompatible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/contacts/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    return-void
.end method
