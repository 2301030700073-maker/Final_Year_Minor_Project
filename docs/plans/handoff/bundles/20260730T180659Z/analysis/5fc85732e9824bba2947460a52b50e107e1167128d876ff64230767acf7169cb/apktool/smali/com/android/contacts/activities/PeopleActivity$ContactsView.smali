.class public final enum Lcom/android/contacts/activities/PeopleActivity$ContactsView;
.super Ljava/lang/Enum;
.source "PeopleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContactsView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/contacts/activities/PeopleActivity$ContactsView;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/contacts/activities/PeopleActivity$ContactsView;

.field public static final enum ACCOUNT_VIEW:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

.field public static final enum ALL_CONTACTS:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

.field public static final enum ASSISTANT:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

.field public static final enum GROUP_VIEW:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

.field public static final enum NONE:Lcom/android/contacts/activities/PeopleActivity$ContactsView;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 116
    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/activities/PeopleActivity$ContactsView;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/activities/PeopleActivity$ContactsView;->NONE:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    .line 117
    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    const-string v1, "ALL_CONTACTS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/contacts/activities/PeopleActivity$ContactsView;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/activities/PeopleActivity$ContactsView;->ALL_CONTACTS:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    .line 118
    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    const-string v1, "ASSISTANT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/activities/PeopleActivity$ContactsView;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/activities/PeopleActivity$ContactsView;->ASSISTANT:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    .line 119
    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    const-string v1, "GROUP_VIEW"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/contacts/activities/PeopleActivity$ContactsView;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/activities/PeopleActivity$ContactsView;->GROUP_VIEW:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    .line 120
    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    const-string v1, "ACCOUNT_VIEW"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/contacts/activities/PeopleActivity$ContactsView;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/activities/PeopleActivity$ContactsView;->ACCOUNT_VIEW:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    .line 115
    sget-object v7, Lcom/android/contacts/activities/PeopleActivity$ContactsView;->NONE:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    aput-object v7, v1, v2

    sget-object v2, Lcom/android/contacts/activities/PeopleActivity$ContactsView;->ALL_CONTACTS:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/contacts/activities/PeopleActivity$ContactsView;->ASSISTANT:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/contacts/activities/PeopleActivity$ContactsView;->GROUP_VIEW:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/android/contacts/activities/PeopleActivity$ContactsView;->$VALUES:[Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/contacts/activities/PeopleActivity$ContactsView;
    .locals 1

    .line 115
    const-class v0, Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    return-object p0
.end method

.method public static values()[Lcom/android/contacts/activities/PeopleActivity$ContactsView;
    .locals 1

    .line 115
    sget-object v0, Lcom/android/contacts/activities/PeopleActivity$ContactsView;->$VALUES:[Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    invoke-virtual {v0}, [Lcom/android/contacts/activities/PeopleActivity$ContactsView;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    return-object v0
.end method
