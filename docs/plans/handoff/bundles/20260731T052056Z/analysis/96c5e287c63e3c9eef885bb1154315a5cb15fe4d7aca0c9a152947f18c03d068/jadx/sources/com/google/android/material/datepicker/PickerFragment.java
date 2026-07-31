package com.google.android.material.datepicker;

import androidx.fragment.app.Fragment;
import com.google.android.material.datepicker.MaterialDatePicker;
import java.util.LinkedHashSet;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class PickerFragment extends Fragment {
    public final LinkedHashSet onSelectionChangedListeners = new LinkedHashSet();

    public void addOnSelectionChangedListener(MaterialDatePicker.AnonymousClass2 anonymousClass2) {
        this.onSelectionChangedListeners.add(anonymousClass2);
    }
}
