package com.fsck.k9.ui.settings.account;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckedTextView;
import android.widget.SeekBar;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.widget.SwitchCompat;
import androidx.compose.runtime.GapPending$keyMap$2;
import androidx.preference.DialogPreference;
import androidx.preference.PreferenceDialogFragmentCompat;
import androidx.work.Operation$State;
import com.fsck.k9.R;
import com.fsck.k9.activity.AlternateRecipientAdapter$$ExternalSyntheticLambda0;
import com.fsck.k9.activity.EditIdentity$$ExternalSyntheticLambda0;
import com.fsck.k9.ui.settings.account.VibrationDialogFragment;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.textview.MaterialTextView;
import com.jcraft.jzlib.Adler32;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import net.thunderbird.feature.notification.NotificationVibration;
import net.thunderbird.feature.notification.VibratePattern;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class VibrationDialogFragment extends PreferenceDialogFragmentCompat {
    public VibrationPatternAdapter adapter;
    public final Lazy vibrator$delegate = ResultKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new GapPending$keyMap$2(12, this));

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class VibrationPatternAdapter extends BaseAdapter {
        public int checkedEntryIndex;
        public final ArrayList entries;
        public final ArrayList entryValues;
        public boolean isVibrationEnabled;
        public final /* synthetic */ VibrationDialogFragment this$0;
        public int vibrationTimes;

        public VibrationPatternAdapter(VibrationDialogFragment vibrationDialogFragment, boolean z, ArrayList arrayList, ArrayList arrayList2, VibratePattern vibratePattern, int i) {
            vibratePattern.getClass();
            this.this$0 = vibrationDialogFragment;
            this.isVibrationEnabled = z;
            this.entries = arrayList;
            this.entryValues = arrayList2;
            int indexOf = arrayList2.indexOf(Integer.valueOf(vibratePattern.serialize()));
            Integer valueOf = indexOf == -1 ? null : Integer.valueOf(indexOf);
            this.checkedEntryIndex = valueOf != null ? valueOf.intValue() : 0;
            this.vibrationTimes = i;
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            return this.entries.size() + 2;
        }

        @Override // android.widget.Adapter
        public final Object getItem(int i) {
            if (i == 0) {
                return null;
            }
            int i2 = i - 1;
            ArrayList arrayList = this.entries;
            if (i2 < arrayList.size()) {
                return (String) arrayList.get(i2);
            }
            return null;
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            return i;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public final int getItemViewType(int i) {
            if (i == 0) {
                return 0;
            }
            return i - 1 < this.entries.size() ? 1 : 2;
        }

        public final VibratePattern getVibratePattern() {
            int intValue = ((Number) this.entryValues.get(this.checkedEntryIndex)).intValue();
            VibratePattern.Companion.getClass();
            return Adler32.deserialize(intValue);
        }

        @Override // android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            int itemViewType = getItemViewType(i);
            final VibrationDialogFragment vibrationDialogFragment = this.this$0;
            if (itemViewType == 0) {
                if (view == null) {
                    view = vibrationDialogFragment.getLayoutInflater().inflate(R.layout.preference_vibration_switch_item, viewGroup, false);
                }
                view.getClass();
                SwitchCompat switchCompat = (SwitchCompat) view.findViewById(R.id.vibrationSwitch);
                switchCompat.setChecked(this.isVibrationEnabled);
                switchCompat.setOnCheckedChangeListener(new EditIdentity$$ExternalSyntheticLambda0(2, this));
                view.findViewById(R.id.switchContainer).setOnClickListener(new AlternateRecipientAdapter$$ExternalSyntheticLambda0(5, switchCompat));
                return view;
            }
            if (itemViewType == 1) {
                if (view == null) {
                    view = vibrationDialogFragment.getLayoutInflater().inflate(R.layout.preference_vibration_pattern_item, viewGroup, false);
                }
                view.getClass();
                CheckedTextView checkedTextView = (CheckedTextView) view;
                Object item = getItem(i);
                item.getClass();
                checkedTextView.setText((String) item);
                final int i2 = i - 1;
                checkedTextView.setChecked(i2 == this.checkedEntryIndex);
                checkedTextView.setEnabled(this.isVibrationEnabled);
                checkedTextView.setOnClickListener(new View.OnClickListener() { // from class: com.fsck.k9.ui.settings.account.VibrationDialogFragment$VibrationPatternAdapter$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        VibrationDialogFragment.VibrationPatternAdapter vibrationPatternAdapter = VibrationDialogFragment.VibrationPatternAdapter.this;
                        vibrationPatternAdapter.checkedEntryIndex = i2;
                        VibrationDialogFragment.access$playVibration(vibrationDialogFragment);
                        vibrationPatternAdapter.notifyDataSetChanged();
                    }
                });
                return view;
            }
            if (itemViewType != 2) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Unknown item type");
                return null;
            }
            if (view == null) {
                view = vibrationDialogFragment.getLayoutInflater().inflate(R.layout.preference_vibration_times_item, viewGroup, false);
            }
            view.getClass();
            final MaterialTextView materialTextView = (MaterialTextView) view.findViewById(R.id.vibrationTimesValue);
            materialTextView.setText(String.valueOf(this.vibrationTimes));
            SeekBar seekBar = (SeekBar) view.findViewById(R.id.vibrationTimesSeekBar);
            seekBar.setEnabled(this.isVibrationEnabled);
            int i3 = this.vibrationTimes - 1;
            if (Build.VERSION.SDK_INT >= 24) {
                seekBar.setProgress(i3, false);
            } else {
                seekBar.setProgress(i3);
            }
            seekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.fsck.k9.ui.settings.account.VibrationDialogFragment$VibrationPatternAdapter$getVibrationTimesView$1$1
                @Override // android.widget.SeekBar.OnSeekBarChangeListener
                public final void onProgressChanged(SeekBar seekBar2, int i4, boolean z) {
                    seekBar2.getClass();
                    int i5 = i4 + 1;
                    VibrationDialogFragment.VibrationPatternAdapter.this.vibrationTimes = i5;
                    materialTextView.setText(String.valueOf(i5));
                }

                @Override // android.widget.SeekBar.OnSeekBarChangeListener
                public final void onStartTrackingTouch(SeekBar seekBar2) {
                    seekBar2.getClass();
                }

                @Override // android.widget.SeekBar.OnSeekBarChangeListener
                public final void onStopTrackingTouch(SeekBar seekBar2) {
                    seekBar2.getClass();
                    VibrationDialogFragment.access$playVibration(vibrationDialogFragment);
                }
            });
            return view;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public final int getViewTypeCount() {
            return 3;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public final boolean hasStableIds() {
            return true;
        }
    }

    public static final void access$playVibration(VibrationDialogFragment vibrationDialogFragment) {
        VibrationPatternAdapter vibrationPatternAdapter = vibrationDialogFragment.adapter;
        if (vibrationPatternAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        VibratePattern vibratePattern = vibrationPatternAdapter.getVibratePattern();
        VibrationPatternAdapter vibrationPatternAdapter2 = vibrationDialogFragment.adapter;
        if (vibrationPatternAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        int i = vibrationPatternAdapter2.vibrationTimes;
        NotificationVibration notificationVibration = NotificationVibration.DEFAULT;
        ((AndroidVibrator) ((Vibrator) vibrationDialogFragment.vibrator$delegate.getValue())).vibrate(RangesKt.getSystemPattern(vibratePattern, i));
    }

    public final VibrationPreference getVibrationPreference() {
        DialogPreference preference = getPreference();
        preference.getClass();
        return (VibrationPreference) preference;
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat, androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        boolean z;
        VibratePattern vibratePattern;
        int i;
        Context requireContext = requireContext();
        if (bundle != null) {
            z = bundle.getBoolean("vibrate");
            String string = bundle.getString("vibratePattern");
            if (string == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Missing enum value for key 'vibratePattern'");
                return null;
            }
            vibratePattern = VibratePattern.valueOf(string);
            i = bundle.getInt("vibrationTimes");
        } else {
            z = getVibrationPreference().isVibrationEnabled;
            vibratePattern = getVibrationPreference().vibratePattern;
            i = getVibrationPreference().vibrationTimes;
        }
        int i2 = i;
        boolean z2 = z;
        VibratePattern vibratePattern2 = vibratePattern;
        CharSequence[] charSequenceArr = getVibrationPreference().mEntries;
        charSequenceArr.getClass();
        ArrayList arrayList = new ArrayList(charSequenceArr.length);
        final int i3 = 0;
        for (CharSequence charSequence : charSequenceArr) {
            arrayList.add(charSequence.toString());
        }
        CharSequence[] charSequenceArr2 = getVibrationPreference().mEntryValues;
        charSequenceArr2.getClass();
        ArrayList arrayList2 = new ArrayList(charSequenceArr2.length);
        for (CharSequence charSequence2 : charSequenceArr2) {
            arrayList2.add(Integer.valueOf(Integer.parseInt(charSequence2.toString())));
        }
        this.adapter = new VibrationPatternAdapter(this, z2, arrayList, arrayList2, vibratePattern2, i2);
        MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(requireContext);
        VibrationPatternAdapter vibrationPatternAdapter = this.adapter;
        if (vibrationPatternAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        materialAlertDialogBuilder.setAdapter(vibrationPatternAdapter, null);
        materialAlertDialogBuilder.setPositiveButton(R.string.okay_action, new DialogInterface.OnClickListener(this) { // from class: com.fsck.k9.ui.settings.account.VibrationDialogFragment$$ExternalSyntheticLambda0
            public final /* synthetic */ VibrationDialogFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i4) {
                int i5 = i3;
                VibrationDialogFragment vibrationDialogFragment = this.f$0;
                switch (i5) {
                    case 0:
                        dialogInterface.getClass();
                        vibrationDialogFragment.mWhichButtonClicked = i4;
                        break;
                    default:
                        dialogInterface.getClass();
                        vibrationDialogFragment.mWhichButtonClicked = i4;
                        break;
                }
            }
        });
        final int i4 = 1;
        materialAlertDialogBuilder.setNegativeButton(R.string.cancel_action, new DialogInterface.OnClickListener(this) { // from class: com.fsck.k9.ui.settings.account.VibrationDialogFragment$$ExternalSyntheticLambda0
            public final /* synthetic */ VibrationDialogFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i42) {
                int i5 = i4;
                VibrationDialogFragment vibrationDialogFragment = this.f$0;
                switch (i5) {
                    case 0:
                        dialogInterface.getClass();
                        vibrationDialogFragment.mWhichButtonClicked = i42;
                        break;
                    default:
                        dialogInterface.getClass();
                        vibrationDialogFragment.mWhichButtonClicked = i42;
                        break;
                }
            }
        });
        return materialAlertDialogBuilder.create();
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat
    public final void onDialogClosed(boolean z) {
        if (z) {
            VibrationPreference vibrationPreference = getVibrationPreference();
            VibrationPatternAdapter vibrationPatternAdapter = this.adapter;
            if (vibrationPatternAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                throw null;
            }
            boolean z2 = vibrationPatternAdapter.isVibrationEnabled;
            VibratePattern vibratePattern = vibrationPatternAdapter.getVibratePattern();
            VibrationPatternAdapter vibrationPatternAdapter2 = this.adapter;
            if (vibrationPatternAdapter2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                throw null;
            }
            int i = vibrationPatternAdapter2.vibrationTimes;
            vibrationPreference.isVibrationEnabled = z2;
            vibrationPreference.vibratePattern = vibratePattern;
            vibrationPreference.vibrationTimes = i;
            vibrationPreference.persistString(ActionBar.encode(z2, vibratePattern, i));
            vibrationPreference.updateSummary();
        }
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        VibrationPatternAdapter vibrationPatternAdapter = this.adapter;
        if (vibrationPatternAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        bundle.putBoolean("vibrate", vibrationPatternAdapter.isVibrationEnabled);
        VibrationPatternAdapter vibrationPatternAdapter2 = this.adapter;
        if (vibrationPatternAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        Operation$State.putEnum(bundle, "vibratePattern", vibrationPatternAdapter2.getVibratePattern());
        VibrationPatternAdapter vibrationPatternAdapter3 = this.adapter;
        if (vibrationPatternAdapter3 != null) {
            bundle.putInt("vibrationTimes", vibrationPatternAdapter3.vibrationTimes);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
    }
}
