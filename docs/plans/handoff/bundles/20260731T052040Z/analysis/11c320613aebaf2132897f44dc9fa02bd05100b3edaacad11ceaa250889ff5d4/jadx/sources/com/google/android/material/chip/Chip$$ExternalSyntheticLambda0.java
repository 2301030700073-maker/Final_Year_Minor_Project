package com.google.android.material.chip;

import android.widget.CompoundButton;
import androidx.preference.PreferenceManager;
import com.google.android.material.internal.CheckableGroup;
import com.google.android.material.internal.MaterialCheckable;
import okhttp3.ConnectionPool;
import org.schabi.newpipe.R;
import org.schabi.newpipe.fragments.list.videos.RelatedItemsFragment;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class Chip$$ExternalSyntheticLambda0 implements CompoundButton.OnCheckedChangeListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ Chip$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                Chip chip = (Chip) obj;
                MaterialCheckable.OnCheckedChangeListener onCheckedChangeListener = chip.onCheckedChangeListenerInternal;
                if (onCheckedChangeListener != null) {
                    CheckableGroup checkableGroup = (CheckableGroup) ((ConnectionPool) onCheckedChangeListener).delegate;
                    if (!z ? checkableGroup.uncheckInternal(chip, checkableGroup.selectionRequired) : checkableGroup.checkInternal(chip)) {
                        checkableGroup.onCheckedStateChanged();
                    }
                }
                CompoundButton.OnCheckedChangeListener onCheckedChangeListener2 = chip.onCheckedChangeListener;
                if (onCheckedChangeListener2 != null) {
                    onCheckedChangeListener2.onCheckedChanged(compoundButton, z);
                    break;
                }
                break;
            default:
                RelatedItemsFragment relatedItemsFragment = (RelatedItemsFragment) obj;
                int i2 = RelatedItemsFragment.$r8$clinit;
                PreferenceManager.getDefaultSharedPreferences(relatedItemsFragment.requireContext()).edit().putBoolean(relatedItemsFragment.getString(R.string.auto_queue_key), z).apply();
                break;
        }
    }
}
