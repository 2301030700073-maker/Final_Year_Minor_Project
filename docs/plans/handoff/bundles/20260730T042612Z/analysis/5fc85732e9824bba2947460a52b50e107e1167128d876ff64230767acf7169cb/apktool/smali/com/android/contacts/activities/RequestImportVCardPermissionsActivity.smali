.class public Lcom/android/contacts/activities/RequestImportVCardPermissionsActivity;
.super Lcom/android/contacts/activities/RequestPermissionsActivity;
.source "RequestImportVCardPermissionsActivity.java"


# static fields
.field private static final REQUIRED_PERMISSIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "android.permission.GET_ACCOUNTS"

    const-string v1, "android.permission.READ_CONTACTS"

    const-string v2, "android.permission.WRITE_CONTACTS"

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    .line 27
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/activities/RequestImportVCardPermissionsActivity;->REQUIRED_PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/android/contacts/activities/RequestPermissionsActivity;-><init>()V

    return-void
.end method

.method public static startPermissionActivity(Landroid/app/Activity;Z)Z
    .locals 2

    .line 50
    sget-object v0, Lcom/android/contacts/activities/RequestImportVCardPermissionsActivity;->REQUIRED_PERMISSIONS:[Ljava/lang/String;

    const-class v1, Lcom/android/contacts/activities/RequestImportVCardPermissionsActivity;

    invoke-static {p0, v0, p1, v1}, Lcom/android/contacts/activities/RequestPermissionsActivityBase;->startPermissionActivity(Landroid/app/Activity;[Ljava/lang/String;ZLjava/lang/Class;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected getPermissions()[Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcom/android/contacts/activities/RequestImportVCardPermissionsActivity;->REQUIRED_PERMISSIONS:[Ljava/lang/String;

    return-object v0
.end method
