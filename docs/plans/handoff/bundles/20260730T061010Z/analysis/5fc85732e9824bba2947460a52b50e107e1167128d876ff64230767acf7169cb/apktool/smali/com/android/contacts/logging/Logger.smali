.class public abstract Lcom/android/contacts/logging/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# direct methods
.method private static getInstance()Lcom/android/contacts/logging/Logger;
    .locals 1

    .line 30
    invoke-static {}, Lcom/android/contactsbind/ObjectFactory;->getLogger()Lcom/android/contacts/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static logEditorEvent(II)V
    .locals 2

    .line 100
    invoke-static {}, Lcom/android/contacts/logging/Logger;->getInstance()Lcom/android/contacts/logging/Logger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    new-instance v1, Lcom/android/contacts/logging/EditorEvent;

    invoke-direct {v1}, Lcom/android/contacts/logging/EditorEvent;-><init>()V

    .line 103
    iput p0, v1, Lcom/android/contacts/logging/EditorEvent;->eventType:I

    .line 104
    iput p1, v1, Lcom/android/contacts/logging/EditorEvent;->numberRawContacts:I

    .line 105
    invoke-virtual {v0, v1}, Lcom/android/contacts/logging/Logger;->logEditorEventImpl(Lcom/android/contacts/logging/EditorEvent;)V

    :cond_0
    return-void
.end method

.method public static logListEvent(IIIII)V
    .locals 1

    .line 69
    new-instance v0, Lcom/android/contacts/logging/ListEvent;

    invoke-direct {v0}, Lcom/android/contacts/logging/ListEvent;-><init>()V

    .line 70
    iput p0, v0, Lcom/android/contacts/logging/ListEvent;->actionType:I

    .line 71
    iput p1, v0, Lcom/android/contacts/logging/ListEvent;->listType:I

    .line 72
    iput p2, v0, Lcom/android/contacts/logging/ListEvent;->count:I

    .line 73
    iput p3, v0, Lcom/android/contacts/logging/ListEvent;->clickedIndex:I

    .line 74
    iput p4, v0, Lcom/android/contacts/logging/ListEvent;->numSelected:I

    .line 76
    invoke-static {}, Lcom/android/contacts/logging/Logger;->getInstance()Lcom/android/contacts/logging/Logger;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 78
    invoke-virtual {p0, v0}, Lcom/android/contacts/logging/Logger;->logListEventImpl(Lcom/android/contacts/logging/ListEvent;)V

    :cond_0
    return-void
.end method

.method public static logQuickContactEvent(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 2

    .line 87
    invoke-static {}, Lcom/android/contacts/logging/Logger;->getInstance()Lcom/android/contacts/logging/Logger;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 89
    new-instance v1, Lcom/android/contacts/logging/QuickContactEvent;

    invoke-direct {v1}, Lcom/android/contacts/logging/QuickContactEvent;-><init>()V

    if-nez p0, :cond_0

    const-string p0, "Unknown"

    .line 90
    :cond_0
    iput-object p0, v1, Lcom/android/contacts/logging/QuickContactEvent;->referrer:Ljava/lang/String;

    .line 91
    iput p1, v1, Lcom/android/contacts/logging/QuickContactEvent;->contactType:I

    .line 92
    iput p2, v1, Lcom/android/contacts/logging/QuickContactEvent;->cardType:I

    .line 93
    iput p3, v1, Lcom/android/contacts/logging/QuickContactEvent;->actionType:I

    if-nez p4, :cond_1

    const-string p4, ""

    .line 94
    :cond_1
    iput-object p4, v1, Lcom/android/contacts/logging/QuickContactEvent;->thirdPartyAction:Ljava/lang/String;

    .line 95
    invoke-virtual {v0, v1}, Lcom/android/contacts/logging/Logger;->logQuickContactEventImpl(Lcom/android/contacts/logging/QuickContactEvent;)V

    :cond_2
    return-void
.end method

.method public static logScreenView(Landroid/app/Activity;I)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-static {p0, p1, v0}, Lcom/android/contacts/logging/Logger;->logScreenView(Landroid/app/Activity;II)V

    return-void
.end method

.method public static logScreenView(Landroid/app/Activity;II)V
    .locals 0

    .line 47
    invoke-static {}, Lcom/android/contacts/logging/Logger;->getInstance()Lcom/android/contacts/logging/Logger;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/logging/Logger;->logScreenViewImpl(II)V

    :cond_0
    return-void
.end method

.method public static logSearchEvent(Lcom/android/contacts/logging/SearchState;)V
    .locals 1

    .line 57
    invoke-static {}, Lcom/android/contacts/logging/Logger;->getInstance()Lcom/android/contacts/logging/Logger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0, p0}, Lcom/android/contacts/logging/Logger;->logSearchEventImpl(Lcom/android/contacts/logging/SearchState;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract logEditorEventImpl(Lcom/android/contacts/logging/EditorEvent;)V
.end method

.method public abstract logListEventImpl(Lcom/android/contacts/logging/ListEvent;)V
.end method

.method public abstract logQuickContactEventImpl(Lcom/android/contacts/logging/QuickContactEvent;)V
.end method

.method public abstract logScreenViewImpl(II)V
.end method

.method public abstract logSearchEventImpl(Lcom/android/contacts/logging/SearchState;)V
.end method
