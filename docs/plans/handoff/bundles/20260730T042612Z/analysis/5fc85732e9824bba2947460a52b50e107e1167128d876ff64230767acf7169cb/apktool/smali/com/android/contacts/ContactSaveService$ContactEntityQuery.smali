.class interface abstract Lcom/android/contacts/ContactSaveService$ContactEntityQuery;
.super Ljava/lang/Object;
.source "ContactSaveService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactSaveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ContactEntityQuery"
.end annotation


# static fields
.field public static final CONTACT_ID:I = 0x1

.field public static final DATA_ID:I = 0x0

.field public static final IS_SUPER_PRIMARY:I = 0x2

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final SELECTION:Ljava/lang/String; = "mimetype = \'vnd.android.cursor.item/name\' AND data1=display_name AND data1 IS NOT NULL  AND data1 != \'\' "


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "data_id"

    const-string v1, "contact_id"

    const-string v2, "is_super_primary"

    .line 1392
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/ContactSaveService$ContactEntityQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
