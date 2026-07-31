package androidx.preference;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.compose.ui.platform.WeakCache;
import androidx.core.view.ViewCompat;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.fsck.k9.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.WeakHashMap;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PreferenceGroupAdapter extends RecyclerView.Adapter {
    public final PreferenceGroup mPreferenceGroup;
    public final ArrayList mPreferenceResourceDescriptors;
    public ArrayList mPreferences;
    public ArrayList mVisiblePreferences;
    public final Fragment.AnonymousClass1 mSyncRunnable = new Fragment.AnonymousClass1(20, this);
    public final Handler mHandler = new Handler(Looper.getMainLooper());

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class PreferenceResourceDescriptor {
        public final String mClassName;
        public final int mLayoutResId;
        public final int mWidgetLayoutResId;

        public PreferenceResourceDescriptor(Preference preference) {
            this.mClassName = preference.getClass().getName();
            this.mLayoutResId = preference.mLayoutResId;
            this.mWidgetLayoutResId = preference.mWidgetLayoutResId;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof PreferenceResourceDescriptor)) {
                return false;
            }
            PreferenceResourceDescriptor preferenceResourceDescriptor = (PreferenceResourceDescriptor) obj;
            return this.mLayoutResId == preferenceResourceDescriptor.mLayoutResId && this.mWidgetLayoutResId == preferenceResourceDescriptor.mWidgetLayoutResId && TextUtils.equals(this.mClassName, preferenceResourceDescriptor.mClassName);
        }

        public final int hashCode() {
            return this.mClassName.hashCode() + ((((527 + this.mLayoutResId) * 31) + this.mWidgetLayoutResId) * 31);
        }
    }

    public PreferenceGroupAdapter(PreferenceGroup preferenceGroup) {
        this.mPreferenceGroup = preferenceGroup;
        preferenceGroup.mListener = this;
        this.mPreferences = new ArrayList();
        this.mVisiblePreferences = new ArrayList();
        this.mPreferenceResourceDescriptors = new ArrayList();
        if (preferenceGroup instanceof PreferenceScreen) {
            setHasStableIds(((PreferenceScreen) preferenceGroup).mShouldUseGeneratedIds);
        } else {
            setHasStableIds(true);
        }
        updatePreferences();
    }

    public final ArrayList createVisiblePreferencesList(PreferenceGroup preferenceGroup) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int size = preferenceGroup.mPreferences.size();
        int i = 0;
        int i2 = 0;
        while (true) {
            CharSequence charSequence = null;
            if (i >= size) {
                int i3 = preferenceGroup.mInitialExpandedChildrenCount;
                if (i3 != Integer.MAX_VALUE && i2 > i3) {
                    Context context = preferenceGroup.mContext;
                    long j = preferenceGroup.mId;
                    ExpandButton expandButton = new ExpandButton(context, null);
                    expandButton.mLayoutResId = R.layout.expand_button;
                    Context context2 = expandButton.mContext;
                    Drawable drawable = Utf8.SafeProcessor.getDrawable(context2, R.drawable.ic_arrow_down_24dp);
                    if (expandButton.mIcon != drawable) {
                        expandButton.mIcon = drawable;
                        expandButton.mIconResId = 0;
                        expandButton.notifyChanged();
                    }
                    expandButton.mIconResId = R.drawable.ic_arrow_down_24dp;
                    expandButton.setTitle(context2.getString(R.string.expand_button_title));
                    if (999 != expandButton.mOrder) {
                        expandButton.mOrder = 999;
                        PreferenceGroupAdapter preferenceGroupAdapter = expandButton.mListener;
                        if (preferenceGroupAdapter != null) {
                            Handler handler = preferenceGroupAdapter.mHandler;
                            Fragment.AnonymousClass1 anonymousClass1 = preferenceGroupAdapter.mSyncRunnable;
                            handler.removeCallbacks(anonymousClass1);
                            handler.post(anonymousClass1);
                        }
                    }
                    ArrayList arrayList3 = new ArrayList();
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        Preference preference = (Preference) it.next();
                        CharSequence charSequence2 = preference.mTitle;
                        boolean z = preference instanceof PreferenceGroup;
                        if (z && !TextUtils.isEmpty(charSequence2)) {
                            arrayList3.add((PreferenceGroup) preference);
                        }
                        if (arrayList3.contains(preference.mParentGroup)) {
                            if (z) {
                                arrayList3.add((PreferenceGroup) preference);
                            }
                        } else if (!TextUtils.isEmpty(charSequence2)) {
                            charSequence = charSequence == null ? charSequence2 : context2.getString(R.string.summary_collapsed_preference_list, charSequence, charSequence2);
                        }
                    }
                    expandButton.setSummary(charSequence);
                    expandButton.mId = j + 1000000;
                    expandButton.mOnClickListener = new WeakCache(this, preferenceGroup);
                    arrayList.add(expandButton);
                }
                return arrayList;
            }
            Preference preference2 = preferenceGroup.getPreference(i);
            if (preference2.mVisible) {
                int i4 = preferenceGroup.mInitialExpandedChildrenCount;
                if (i4 == Integer.MAX_VALUE || i2 < i4) {
                    arrayList.add(preference2);
                } else {
                    arrayList2.add(preference2);
                }
                if (preference2 instanceof PreferenceGroup) {
                    PreferenceGroup preferenceGroup2 = (PreferenceGroup) preference2;
                    if (preferenceGroup2 instanceof PreferenceScreen) {
                        continue;
                    } else {
                        if (preferenceGroup.mInitialExpandedChildrenCount != Integer.MAX_VALUE && preferenceGroup2.mInitialExpandedChildrenCount != Integer.MAX_VALUE) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Nesting an expandable group inside of another expandable group is not supported!");
                            return null;
                        }
                        Iterator it2 = createVisiblePreferencesList(preferenceGroup2).iterator();
                        while (it2.hasNext()) {
                            Preference preference3 = (Preference) it2.next();
                            int i5 = preferenceGroup.mInitialExpandedChildrenCount;
                            if (i5 == Integer.MAX_VALUE || i2 < i5) {
                                arrayList.add(preference3);
                            } else {
                                arrayList2.add(preference3);
                            }
                            i2++;
                        }
                    }
                } else {
                    i2++;
                }
            }
            i++;
        }
    }

    public final void flattenPreferenceGroup(ArrayList arrayList, PreferenceGroup preferenceGroup) {
        synchronized (preferenceGroup) {
            Collections.sort(preferenceGroup.mPreferences);
        }
        int size = preferenceGroup.mPreferences.size();
        for (int i = 0; i < size; i++) {
            Preference preference = preferenceGroup.getPreference(i);
            arrayList.add(preference);
            PreferenceResourceDescriptor preferenceResourceDescriptor = new PreferenceResourceDescriptor(preference);
            if (!this.mPreferenceResourceDescriptors.contains(preferenceResourceDescriptor)) {
                this.mPreferenceResourceDescriptors.add(preferenceResourceDescriptor);
            }
            if (preference instanceof PreferenceGroup) {
                PreferenceGroup preferenceGroup2 = (PreferenceGroup) preference;
                if (!(preferenceGroup2 instanceof PreferenceScreen)) {
                    flattenPreferenceGroup(arrayList, preferenceGroup2);
                }
            }
            preference.mListener = this;
        }
    }

    public final Preference getItem(int i) {
        if (i < 0 || i >= this.mVisiblePreferences.size()) {
            return null;
        }
        return (Preference) this.mVisiblePreferences.get(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.mVisiblePreferences.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final long getItemId(int i) {
        if (this.mHasStableIds) {
            return getItem(i).getId();
        }
        return -1L;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int i) {
        PreferenceResourceDescriptor preferenceResourceDescriptor = new PreferenceResourceDescriptor(getItem(i));
        ArrayList arrayList = this.mPreferenceResourceDescriptors;
        int indexOf = arrayList.indexOf(preferenceResourceDescriptor);
        if (indexOf != -1) {
            return indexOf;
        }
        int size = arrayList.size();
        arrayList.add(preferenceResourceDescriptor);
        return size;
    }

    public final int getPreferenceAdapterPosition(Preference preference) {
        int size = this.mVisiblePreferences.size();
        for (int i = 0; i < size; i++) {
            Preference preference2 = (Preference) this.mVisiblePreferences.get(i);
            if (preference2 != null && preference2.equals(preference)) {
                return i;
            }
        }
        return -1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        PreferenceViewHolder preferenceViewHolder = (PreferenceViewHolder) viewHolder;
        Preference item = getItem(i);
        ColorStateList colorStateList = preferenceViewHolder.mTitleTextColors;
        View view = preferenceViewHolder.itemView;
        Drawable background = view.getBackground();
        Drawable drawable = preferenceViewHolder.mBackground;
        if (background != drawable) {
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            view.setBackground(drawable);
        }
        TextView textView = (TextView) preferenceViewHolder.findViewById(android.R.id.title);
        if (textView != null && colorStateList != null && !textView.getTextColors().equals(colorStateList)) {
            textView.setTextColor(colorStateList);
        }
        item.onBindViewHolder(preferenceViewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        PreferenceResourceDescriptor preferenceResourceDescriptor = (PreferenceResourceDescriptor) this.mPreferenceResourceDescriptors.get(i);
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        TypedArray obtainStyledAttributes = viewGroup.getContext().obtainStyledAttributes((AttributeSet) null, R$styleable.BackgroundStyle);
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        if (drawable == null) {
            drawable = Utf8.SafeProcessor.getDrawable(viewGroup.getContext(), android.R.drawable.list_selector_background);
        }
        obtainStyledAttributes.recycle();
        View inflate = from.inflate(preferenceResourceDescriptor.mLayoutResId, viewGroup, false);
        if (inflate.getBackground() == null) {
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            inflate.setBackground(drawable);
        }
        ViewGroup viewGroup2 = (ViewGroup) inflate.findViewById(android.R.id.widget_frame);
        if (viewGroup2 != null) {
            int i2 = preferenceResourceDescriptor.mWidgetLayoutResId;
            if (i2 != 0) {
                from.inflate(i2, viewGroup2);
            } else {
                viewGroup2.setVisibility(8);
            }
        }
        return new PreferenceViewHolder(inflate);
    }

    public final void updatePreferences() {
        Iterator it = this.mPreferences.iterator();
        while (it.hasNext()) {
            ((Preference) it.next()).mListener = null;
        }
        ArrayList arrayList = new ArrayList(this.mPreferences.size());
        this.mPreferences = arrayList;
        PreferenceGroup preferenceGroup = this.mPreferenceGroup;
        flattenPreferenceGroup(arrayList, preferenceGroup);
        this.mVisiblePreferences = createVisiblePreferencesList(preferenceGroup);
        this.mObservable.notifyChanged();
        Iterator it2 = this.mPreferences.iterator();
        while (it2.hasNext()) {
            ((Preference) it2.next()).getClass();
        }
    }
}
