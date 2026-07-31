package com.fsck.k9.ui.settings.account;

import android.content.Context;
import android.text.SpannableString;
import android.text.style.StyleSpan;
import android.util.AttributeSet;
import androidx.camera.core.CameraX$$ExternalSyntheticLambda0;
import androidx.compose.runtime.GapPending$keyMap$2;
import androidx.core.content.res.CamUtils;
import androidx.preference.ListPreference;
import app.k9mail.legacy.ui.folder.FolderNameFormatter;
import com.fsck.k9.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.io.Sink$CC;
import net.thunderbird.feature.mail.folder.api.RemoteFolder;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FolderListPreference extends ListPreference implements KoinComponent {
    public SpannableString automaticFolderOption;
    public final Lazy folderNameFormatter$delegate;
    public final SpannableString noFolderSelectedName;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FolderListPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        context.getClass();
        this.folderNameFormatter$delegate = ResultKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new GapPending$keyMap$2(this, new CameraX$$ExternalSyntheticLambda0(context, 4)));
        String string = context.getString(R.string.account_settings_no_folder_selected);
        string.getClass();
        SpannableString spannableString = new SpannableString(string);
        spannableString.setSpan(new StyleSpan(2), 0, spannableString.length(), 0);
        this.noFolderSelectedName = spannableString;
        this.mEntries = new CharSequence[0];
        this.mEntryValues = new CharSequence[0];
        setEnabled(false);
    }

    public static ArrayList getFolderValues(List list) {
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add("MANUAL|" + ((RemoteFolder) it.next()).id);
        }
        return arrayList;
    }

    public final ArrayList getFolderDisplayNames(List list) {
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((FolderNameFormatter) this.folderNameFormatter$delegate.getValue()).displayName((RemoteFolder) it.next()));
        }
        return arrayList;
    }

    @Override // org.koin.core.component.KoinComponent
    public final /* bridge */ Koin getKoin() {
        return Sink$CC.$default$getKoin();
    }

    @Override // androidx.preference.ListPreference, androidx.preference.Preference
    public final CharSequence getSummary() {
        CharSequence[] charSequenceArr = this.mEntries;
        charSequenceArr.getClass();
        if (charSequenceArr.length == 0) {
            return " ";
        }
        if (Intrinsics.areEqual(this.mValue, "MANUAL|")) {
            return this.noFolderSelectedName;
        }
        String str = this.mValue;
        str.getClass();
        if (!StringsKt__StringsJVMKt.startsWith(str, "AUTOMATIC|", false)) {
            return super.getSummary();
        }
        SpannableString spannableString = this.automaticFolderOption;
        if (spannableString != null) {
            return spannableString;
        }
        Intrinsics.throwUninitializedPropertyAccessException("automaticFolderOption");
        throw null;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FolderListPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, null);
        context.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FolderListPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0, 8, null);
        context.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FolderListPreference(Context context) {
        this(context, null, 0, 0, 14, null);
        context.getClass();
    }

    public /* synthetic */ FolderListPreference(Context context, AttributeSet attributeSet, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i3 & 2) != 0 ? null : attributeSet, (i3 & 4) != 0 ? CamUtils.getAttr(context, R.attr.dialogPreferenceStyle, android.R.attr.dialogPreferenceStyle) : i, (i3 & 8) != 0 ? 0 : i2);
    }
}
