.class interface abstract Lcom/android/contacts/ContactSaveService$JoinContactQuery;
.super Ljava/lang/Object;
.source "ContactSaveService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactSaveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "JoinContactQuery"
.end annotation


# static fields
.field public static final CONTACT_ID:I = 0x1

.field public static final DISPLAY_NAME_SOURCE:I = 0x2

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final _ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_id"

    const-string v1, "contact_id"

    const-string v2, "display_name_source"

    .line 1380
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/ContactSaveService$JoinContactQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
