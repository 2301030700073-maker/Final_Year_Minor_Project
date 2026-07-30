.class Lcom/android/contacts/activities/ShowOrCreateActivity$IntentClickListener;
.super Ljava/lang/Object;
.source "ShowOrCreateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ShowOrCreateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntentClickListener"
.end annotation


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private mParent:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p1, p0, Lcom/android/contacts/activities/ShowOrCreateActivity$IntentClickListener;->mParent:Landroid/app/Activity;

    .line 253
    iput-object p2, p0, Lcom/android/contacts/activities/ShowOrCreateActivity$IntentClickListener;->mIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 257
    iget-object p1, p0, Lcom/android/contacts/activities/ShowOrCreateActivity$IntentClickListener;->mIntent:Landroid/content/Intent;

    if-eqz p1, :cond_0

    .line 258
    iget-object p2, p0, Lcom/android/contacts/activities/ShowOrCreateActivity$IntentClickListener;->mParent:Landroid/app/Activity;

    invoke-static {p2, p1}, Lcom/android/contacts/util/ImplicitIntentsUtil;->startActivityInApp(Landroid/content/Context;Landroid/content/Intent;)V

    .line 260
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/activities/ShowOrCreateActivity$IntentClickListener;->mParent:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
