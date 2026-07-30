.class final Lcom/android/contacts/quickcontact/QuickContactActivity$HangoutsDataItemModel;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HangoutsDataItemModel"
.end annotation


# instance fields
.field public alternateContentDescription:Ljava/lang/StringBuilder;

.field public alternateIntent:Landroid/content/Intent;

.field public context:Landroid/content/Context;

.field public dataItem:Lcom/android/contacts/model/dataitem/DataItem;

.field public header:Ljava/lang/String;

.field public intent:Landroid/content/Intent;

.field public secondDataItem:Lcom/android/contacts/model/dataitem/DataItem;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/content/Intent;Lcom/android/contacts/model/dataitem/DataItem;Lcom/android/contacts/model/dataitem/DataItem;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 1899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1900
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$HangoutsDataItemModel;->intent:Landroid/content/Intent;

    .line 1901
    iput-object p2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$HangoutsDataItemModel;->alternateIntent:Landroid/content/Intent;

    .line 1902
    iput-object p3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$HangoutsDataItemModel;->dataItem:Lcom/android/contacts/model/dataitem/DataItem;

    .line 1903
    iput-object p4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$HangoutsDataItemModel;->secondDataItem:Lcom/android/contacts/model/dataitem/DataItem;

    .line 1904
    iput-object p5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$HangoutsDataItemModel;->alternateContentDescription:Ljava/lang/StringBuilder;

    .line 1905
    iput-object p6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$HangoutsDataItemModel;->header:Ljava/lang/String;

    .line 1906
    iput-object p7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$HangoutsDataItemModel;->text:Ljava/lang/String;

    .line 1907
    iput-object p8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$HangoutsDataItemModel;->context:Landroid/content/Context;

    return-void
.end method
