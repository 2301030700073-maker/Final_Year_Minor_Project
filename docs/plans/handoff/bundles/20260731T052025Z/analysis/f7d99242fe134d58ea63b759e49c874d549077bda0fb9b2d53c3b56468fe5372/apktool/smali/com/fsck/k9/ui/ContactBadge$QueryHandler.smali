.class public final Lcom/fsck/k9/ui/ContactBadge$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic this$0:Lcom/fsck/k9/ui/ContactBadge;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/ui/ContactBadge;Landroid/content/ContentResolver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/ui/ContactBadge$QueryHandler;->this$0:Lcom/fsck/k9/ui/ContactBadge;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 8

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    check-cast p2, Landroid/os/Bundle;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance p2, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    :goto_0
    const-string/jumbo v0, "uri_content"

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    if-eq p1, v1, :cond_1

    .line 20
    .line 21
    move-object p1, v2

    .line 22
    move-object v5, p1

    .line 23
    move v4, v3

    .line 24
    goto :goto_3

    .line 25
    :cond_1
    :try_start_0
    const-string p1, "mailto"

    .line 26
    .line 27
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-static {p1, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    move v4, v1

    .line 36
    goto :goto_1

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    move-object p1, v2

    .line 40
    move v4, v3

    .line 41
    :goto_1
    if-eqz p3, :cond_4

    .line 42
    .line 43
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_4

    .line 48
    .line 49
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 50
    .line 51
    .line 52
    move-result-wide v5

    .line 53
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    invoke-static {v5, v6, v7}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    .line 58
    .line 59
    .line 60
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    goto :goto_3

    .line 62
    :goto_2
    if-eqz p3, :cond_3

    .line 63
    .line 64
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 65
    .line 66
    .line 67
    :cond_3
    throw p0

    .line 68
    :cond_4
    move-object v5, v2

    .line 69
    :goto_3
    if-eqz p3, :cond_5

    .line 70
    .line 71
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 72
    .line 73
    .line 74
    :cond_5
    iget-object p0, p0, Lcom/fsck/k9/ui/ContactBadge$QueryHandler;->this$0:Lcom/fsck/k9/ui/ContactBadge;

    .line 75
    .line 76
    iput-object v5, p0, Lcom/fsck/k9/ui/ContactBadge;->contactUri:Landroid/net/Uri;

    .line 77
    .line 78
    if-nez v5, :cond_6

    .line 79
    .line 80
    iget-object p3, p0, Lcom/fsck/k9/ui/ContactBadge;->contactEmail:Ljava/lang/String;

    .line 81
    .line 82
    if-eqz p3, :cond_7

    .line 83
    .line 84
    :cond_6
    move v3, v1

    .line 85
    :cond_7
    invoke-virtual {p0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 86
    .line 87
    .line 88
    if-eqz v4, :cond_8

    .line 89
    .line 90
    if-eqz v5, :cond_8

    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const/4 p2, 0x3

    .line 97
    invoke-static {p1, p0, v5, p2, v2}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_8
    if-eqz p1, :cond_9

    .line 102
    .line 103
    :try_start_1
    new-instance p3, Landroid/content/Intent;

    .line 104
    .line 105
    const-string v2, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    .line 106
    .line 107
    invoke-direct {p3, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p3, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :catch_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    const p1, 0x7f1202c4

    .line 129
    .line 130
    .line 131
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 136
    .line 137
    .line 138
    :cond_9
    return-void
.end method
