.class public Lcom/android/contacts/util/SharedPreferenceUtil;
.super Ljava/lang/Object;
.source "SharedPreferenceUtil.java"


# direct methods
.method private static buildSharedPrefsName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "num-of-dismisses-account-sync-off"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDismissedSims(Landroid/content/Context;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 210
    invoke-static {p0}, Lcom/android/contacts/util/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 211
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "dismissedSimCards"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static getHamburgerMenuClickedBefore(Landroid/content/Context;)Z
    .locals 2

    .line 77
    invoke-static {p0}, Lcom/android/contacts/util/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "hamburgerMenuClicked"

    const/4 v1, 0x0

    .line 78
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getHamburgerPromoDisplayedBefore(Landroid/content/Context;)Z
    .locals 2

    .line 65
    invoke-static {p0}, Lcom/android/contacts/util/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "hamburgerPromoDisplayed"

    const/4 v1, 0x0

    .line 66
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getHamburgerPromoTriggerActionHappenedBefore(Landroid/content/Context;)Z
    .locals 2

    .line 89
    invoke-static {p0}, Lcom/android/contacts/util/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "hamburgerPromoTriggerActionHappened"

    const/4 v1, 0x0

    .line 90
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static getImportedSims(Landroid/content/Context;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 205
    invoke-static {p0}, Lcom/android/contacts/util/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 206
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "importedSimCards"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static getNumOfDismissesForAutoSyncOff(Landroid/content/Context;)I
    .locals 2

    .line 125
    invoke-static {p0}, Lcom/android/contacts/util/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "num-of-dismisses-auto-sync-off"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getNumOfDismissesforAccountSyncOff(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .line 149
    invoke-static {p0}, Lcom/android/contacts/util/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {p1}, Lcom/android/contacts/util/SharedPreferenceUtil;->buildSharedPrefsName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method protected static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 116
    invoke-static {p0}, Lcom/android/contacts/util/SharedPreferenceUtil;->getSharedPreferencesFilename(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static getSharedPreferencesFilename(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getShouldShowHamburgerPromo(Landroid/content/Context;)Z
    .locals 1

    .line 110
    invoke-static {p0}, Lcom/android/contacts/util/SharedPreferenceUtil;->getHamburgerMenuClickedBefore(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-static {p0}, Lcom/android/contacts/util/SharedPreferenceUtil;->getHamburgerPromoTriggerActionHappenedBefore(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-static {p0}, Lcom/android/contacts/util/SharedPreferenceUtil;->getHamburgerPromoDisplayedBefore(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static incNumOfDismissesForAccountSyncOff(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 162
    invoke-static {p0}, Lcom/android/contacts/util/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 163
    invoke-static {p1}, Lcom/android/contacts/util/SharedPreferenceUtil;->buildSharedPrefsName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 162
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 164
    invoke-static {p0}, Lcom/android/contacts/util/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 165
    invoke-static {p1}, Lcom/android/contacts/util/SharedPreferenceUtil;->buildSharedPrefsName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static incNumOfDismissesForAutoSyncOff(Landroid/content/Context;)V
    .locals 3

    .line 138
    invoke-static {p0}, Lcom/android/contacts/util/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "num-of-dismisses-auto-sync-off"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 140
    invoke-static {p0}, Lcom/android/contacts/util/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    .line 141
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static isWelcomeCardDismissed(Landroid/content/Context;)Z
    .locals 2

    .line 249
    invoke-static {p0}, Lcom/android/contacts/util/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "welcome-reminder-card-dismissed"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static persistSimStates(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection<",
            "Lcom/android/contacts/model/SimCard;",
            ">;)V"
        }
    .end annotation

    .line 169
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Lcom/android/contacts/util/SharedPreferenceUtil;->getImportedSims(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 170
    new-instance v1, Ljava/util/HashSet;

    invoke-static {p0}, Lcom/android/contacts/util/SharedPreferenceUtil;->getDismissedSims(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 171
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/SimCard;

    .line 172
    invoke-virtual {v2}, Lcom/android/contacts/model/SimCard;->getSimId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {v2}, Lcom/android/contacts/model/SimCard;->isImported()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 177
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 179
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 181
    :goto_1
    invoke-virtual {v2}, Lcom/android/contacts/model/SimCard;->isDismissed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 182
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 184
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 187
    :cond_3
    invoke-static {p0}, Lcom/android/contacts/util/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "importedSimCards"

    .line 188
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "dismissedSimCards"

    .line 189
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 190
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static resetNumOfDismissesForAccountSyncOff(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 153
    invoke-static {p0}, Lcom/android/contacts/util/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 154
    invoke-static {p1}, Lcom/android/contacts/util/SharedPreferenceUtil;->buildSharedPrefsName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 153
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-static {p0}, Lcom/android/contacts/util/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 157
    invoke-static {p1}, Lcom/android/contacts/util/SharedPreferenceUtil;->buildSharedPrefsName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static resetNumOfDismissesForAutoSyncOff(Landroid/content/Context;)V
    .locals 3

    .line 129
    invoke-static {p0}, Lcom/android/contacts/util/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "num-of-dismisses-auto-sync-off"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-static {p0}, Lcom/android/contacts/util/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 133
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static restoreSimStates(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/SimCard;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/SimCard;",
            ">;"
        }
    .end annotation

    .line 194
    invoke-static {p0}, Lcom/android/contacts/util/SharedPreferenceUtil;->getImportedSims(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 195
    invoke-static {p0}, Lcom/android/contacts/util/SharedPreferenceUtil;->getDismissedSims(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p0

    .line 196
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 197
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/SimCard;

    .line 198
    invoke-virtual {v2}, Lcom/android/contacts/model/SimCard;->getSimId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 199
    invoke-virtual {v2}, Lcom/android/contacts/model/SimCard;->getSimId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 198
    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/model/SimCard;->withImportAndDismissStates(ZZ)Lcom/android/contacts/model/SimCard;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static setHamburgerMenuClickedBefore(Landroid/content/Context;)V
    .locals 3

    .line 82
    invoke-static {p0}, Lcom/android/contacts/util/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hamburgerMenuClicked"

    const/4 v2, 0x1

    .line 83
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 84
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 85
    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-direct {v0, p0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    return-void
.end method

.method public static setHamburgerPromoDisplayedBefore(Landroid/content/Context;)V
    .locals 3

    .line 70
    invoke-static {p0}, Lcom/android/contacts/util/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hamburgerPromoDisplayed"

    const/4 v2, 0x1

    .line 71
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 73
    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-direct {v0, p0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    return-void
.end method

.method public static setHamburgerPromoTriggerActionHappenedBefore(Landroid/content/Context;)V
    .locals 3

    .line 94
    invoke-static {p0}, Lcom/android/contacts/util/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hamburgerPromoTriggerActionHappened"

    const/4 v2, 0x1

    .line 95
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 97
    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-direct {v0, p0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    return-void
.end method
