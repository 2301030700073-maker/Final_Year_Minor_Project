package com.android.launcher3.model.data;

import android.app.Person;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ShortcutInfo;
import android.os.UserHandle;
import android.text.TextUtils;
import com.android.launcher3.Utilities;
import com.android.launcher3.icons.BitmapInfo;
import com.android.launcher3.shortcuts.ShortcutKey;
import com.android.launcher3.util.ContentWriter;
import java.util.Arrays;
import java.util.function.Function;
import java.util.function.IntFunction;

/* loaded from: classes.dex */
public class WorkspaceItemInfo extends ItemInfoWithIcon {
    public CharSequence disabledMessage;
    public Intent.ShortcutIconResource iconResource;
    public Intent intent;
    public int mInstallProgress;
    public String[] personKeys;
    public int status;

    public WorkspaceItemInfo() {
        this.personKeys = Utilities.EMPTY_STRING_ARRAY;
        this.itemType = 1;
    }

    @Override // com.android.launcher3.model.data.ItemInfoWithIcon
    /* renamed from: clone */
    public ItemInfoWithIcon mo1clone() {
        return new WorkspaceItemInfo(this);
    }

    public String getDeepShortcutId() {
        if (this.itemType == 6) {
            return this.intent.getStringExtra("shortcut_id");
        }
        return null;
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public Intent getIntent() {
        return this.intent;
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public ComponentName getTargetComponent() {
        ComponentName targetComponent = super.getTargetComponent();
        if (targetComponent != null || (this.itemType != 1 && !hasStatusFlag(19))) {
            return targetComponent;
        }
        String str = this.intent.getPackage();
        if (str == null) {
            return null;
        }
        return new ComponentName(str, ".");
    }

    public boolean hasPromiseIconUi() {
        return isPromise() && !hasStatusFlag(16);
    }

    public boolean hasStatusFlag(int i) {
        return (this.status & i) != 0;
    }

    public final boolean isPromise() {
        return hasStatusFlag(3);
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public void onAddToDatabase(ContentWriter contentWriter) {
        super.onAddToDatabase(contentWriter);
        CharSequence charSequence = this.title;
        contentWriter.mValues.put("title", charSequence == null ? null : charSequence.toString());
        Intent intent = this.intent;
        contentWriter.mValues.put("intent", intent != null ? intent.toUri(0) : null);
        contentWriter.mValues.put("restored", Integer.valueOf(this.status));
        if (!usingLowResIcon()) {
            BitmapInfo bitmapInfo = this.bitmap;
            UserHandle userHandle = this.user;
            contentWriter.mIcon = bitmapInfo;
            contentWriter.mUser = userHandle;
        }
        Intent.ShortcutIconResource shortcutIconResource = this.iconResource;
        if (shortcutIconResource != null) {
            contentWriter.mValues.put("iconPackage", shortcutIconResource.packageName);
            contentWriter.mValues.put("iconResource", this.iconResource.resourceName);
        }
    }

    public void setInstallProgress(int i) {
        this.mInstallProgress = i;
        this.status |= 4;
    }

    public void updateFromDeepShortcutInfo(ShortcutInfo shortcutInfo, Context context) {
        this.intent = ShortcutKey.makeIntent(shortcutInfo);
        this.title = shortcutInfo.getShortLabel();
        CharSequence longLabel = shortcutInfo.getLongLabel();
        if (TextUtils.isEmpty(longLabel)) {
            longLabel = shortcutInfo.getShortLabel();
        }
        this.contentDescription = context.getPackageManager().getUserBadgedLabel(longLabel, this.user);
        if (shortcutInfo.isEnabled()) {
            this.runtimeStatusFlags &= -17;
        } else {
            this.runtimeStatusFlags |= 16;
        }
        this.disabledMessage = shortcutInfo.getDisabledMessage();
        Person[] persons = shortcutInfo.getPersons();
        if (persons == null) {
            persons = Utilities.EMPTY_PERSON_ARRAY;
        }
        this.personKeys = persons.length == 0 ? Utilities.EMPTY_STRING_ARRAY : (String[]) Arrays.stream(persons).map(new Function() { // from class: c.a.a.N0.h0.a
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((Person) obj).getKey();
            }
        }).sorted().toArray(new IntFunction() { // from class: c.a.a.N0.h0.h
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                return new String[i];
            }
        });
    }

    @Override // com.android.launcher3.model.data.ItemInfoWithIcon
    /* renamed from: clone */
    public Object mo1clone() {
        return new WorkspaceItemInfo(this);
    }

    public WorkspaceItemInfo(WorkspaceItemInfo workspaceItemInfo) {
        super(workspaceItemInfo);
        this.personKeys = Utilities.EMPTY_STRING_ARRAY;
        this.title = workspaceItemInfo.title;
        this.intent = new Intent(workspaceItemInfo.intent);
        this.iconResource = workspaceItemInfo.iconResource;
        this.status = workspaceItemInfo.status;
        this.mInstallProgress = workspaceItemInfo.mInstallProgress;
        this.personKeys = (String[]) workspaceItemInfo.personKeys.clone();
    }

    public WorkspaceItemInfo(AppInfo appInfo) {
        super(appInfo);
        this.personKeys = Utilities.EMPTY_STRING_ARRAY;
        this.title = Utilities.trim(appInfo.title);
        this.intent = new Intent(appInfo.getIntent());
    }

    public WorkspaceItemInfo(ShortcutInfo shortcutInfo, Context context) {
        this.personKeys = Utilities.EMPTY_STRING_ARRAY;
        this.user = shortcutInfo.getUserHandle();
        this.itemType = 6;
        updateFromDeepShortcutInfo(shortcutInfo, context);
    }
}
