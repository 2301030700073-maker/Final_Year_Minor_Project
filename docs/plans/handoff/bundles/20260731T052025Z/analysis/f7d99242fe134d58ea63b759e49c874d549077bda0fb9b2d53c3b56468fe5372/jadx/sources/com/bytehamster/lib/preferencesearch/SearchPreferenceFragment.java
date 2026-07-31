package com.bytehamster.lib.preferencesearch;

import android.animation.Animator;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPopupHelper;
import androidx.appcompat.widget.PopupMenu;
import androidx.appcompat.widget.SearchView;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.cardview.widget.CardView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.Fragment$$ExternalSyntheticLambda0;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import app.k9mail.ui.utils.bottomsheet.ToolbarBottomSheetDialog$$ExternalSyntheticLambda2;
import com.bytehamster.lib.preferencesearch.PreferenceParser;
import com.bytehamster.lib.preferencesearch.ui.RevealAnimationSetting;
import com.eygraber.uri.Uri;
import com.fsck.k9.R;
import com.google.android.material.textfield.TextInputLayout;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class SearchPreferenceFragment extends Fragment {
    public SearchPreferenceAdapter adapter;
    public ArrayList history;
    public OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 historyClickListener;
    public SharedPreferences prefs;
    public List results;
    public SearchConfiguration searchConfiguration;
    public PreferenceParser searcher;
    public Uri.Builder viewHolder;
    public String searchTermPreset = null;
    public final SearchView.AnonymousClass10 textWatcher = new SearchView.AnonymousClass10(1, this);

    public final void addHistoryEntry(String str) {
        HistoryItem historyItem = new HistoryItem(str);
        if (this.history.contains(historyItem)) {
            return;
        }
        if (this.history.size() >= 5) {
            this.history.remove(r3.size() - 1);
        }
        this.history.add(0, historyItem);
        saveHistory();
        updateSearchResults(((EditText) this.viewHolder.authority).getText().toString());
    }

    public final void hideKeyboard$2() {
        View currentFocus = getActivity().getCurrentFocus();
        InputMethodManager inputMethodManager = (InputMethodManager) getActivity().getSystemService("input_method");
        if (currentFocus == null || inputMethodManager == null) {
            return;
        }
        inputMethodManager.hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
        currentFocus.clearFocus();
    }

    public final String historyEntryKey(int i) {
        if (this.searchConfiguration.historyId == null) {
            return CameraDevices$CC.m("history_", i);
        }
        return this.searchConfiguration.historyId + "_history_" + i;
    }

    public final String historySizeKey() {
        return this.searchConfiguration.historyId != null ? CameraDevices$CC.m(new StringBuilder(), this.searchConfiguration.historyId, "_history_size") : "history_size";
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x01a2 A[Catch: Exception -> 0x00e7, TryCatch #0 {Exception -> 0x00e7, blocks: (B:6:0x00c8, B:8:0x00e3, B:10:0x00ea, B:12:0x00f0, B:15:0x00f9, B:18:0x0111, B:20:0x0115, B:23:0x011e, B:25:0x0130, B:27:0x0138, B:28:0x013d, B:30:0x0143, B:32:0x014f, B:37:0x0159, B:42:0x0176, B:43:0x0181, B:45:0x0187, B:48:0x018f, B:53:0x0193, B:54:0x0198, B:56:0x01a2, B:59:0x01a8, B:61:0x01ab, B:63:0x01b5, B:64:0x01f0, B:67:0x01bf, B:69:0x01ca, B:71:0x01d4, B:73:0x01e7), top: B:5:0x00c8 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01b5 A[Catch: Exception -> 0x00e7, TryCatch #0 {Exception -> 0x00e7, blocks: (B:6:0x00c8, B:8:0x00e3, B:10:0x00ea, B:12:0x00f0, B:15:0x00f9, B:18:0x0111, B:20:0x0115, B:23:0x011e, B:25:0x0130, B:27:0x0138, B:28:0x013d, B:30:0x0143, B:32:0x014f, B:37:0x0159, B:42:0x0176, B:43:0x0181, B:45:0x0187, B:48:0x018f, B:53:0x0193, B:54:0x0198, B:56:0x01a2, B:59:0x01a8, B:61:0x01ab, B:63:0x01b5, B:64:0x01f0, B:67:0x01bf, B:69:0x01ca, B:71:0x01d4, B:73:0x01e7), top: B:5:0x00c8 }] */
    @Override // androidx.fragment.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onCreate(android.os.Bundle r19) {
        /*
            Method dump skipped, instructions count: 578
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytehamster.lib.preferencesearch.SearchPreferenceFragment.onCreate(android.os.Bundle):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        final View inflate = layoutInflater.inflate(R.layout.searchpreference_fragment, viewGroup, false);
        Uri.Builder builder = new Uri.Builder(6, (boolean) (0 == true ? 1 : 0));
        builder.authority = (EditText) inflate.findViewById(R.id.search);
        ImageView imageView = (ImageView) inflate.findViewById(R.id.clear);
        builder.scheme = imageView;
        builder.query = (RecyclerView) inflate.findViewById(R.id.list);
        builder.opaquePart = (ImageView) inflate.findViewById(R.id.more);
        builder.fragment = (TextView) inflate.findViewById(R.id.no_results);
        builder.path = (CardView) inflate.findViewById(R.id.search_card);
        this.viewHolder = builder;
        final Object[] objArr = 0 == true ? 1 : 0;
        imageView.setOnClickListener(new View.OnClickListener(this) { // from class: com.bytehamster.lib.preferencesearch.SearchPreferenceFragment$$ExternalSyntheticLambda1
            public final /* synthetic */ SearchPreferenceFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i = objArr;
                SearchPreferenceFragment searchPreferenceFragment = this.f$0;
                switch (i) {
                    case 0:
                        ((EditText) searchPreferenceFragment.viewHolder.authority).setText("");
                        break;
                    default:
                        Context context = searchPreferenceFragment.getContext();
                        PopupMenu popupMenu = new PopupMenu(context, (ImageView) searchPreferenceFragment.viewHolder.opaquePart);
                        SupportMenuInflater supportMenuInflater = new SupportMenuInflater(context);
                        MenuBuilder menuBuilder = popupMenu.mMenu;
                        supportMenuInflater.inflate(R.menu.searchpreference_more, menuBuilder);
                        popupMenu.mMenuItemClickListener = new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(18, searchPreferenceFragment);
                        if (searchPreferenceFragment.searchConfiguration.textClearHistory != null) {
                            menuBuilder.findItem(R.id.clear_history).setTitle(searchPreferenceFragment.searchConfiguration.textClearHistory);
                        }
                        MenuPopupHelper menuPopupHelper = popupMenu.mPopup;
                        if (!menuPopupHelper.isShowing()) {
                            if (menuPopupHelper.mAnchorView == null) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("MenuPopupHelper cannot be used without an anchor");
                                break;
                            } else {
                                menuPopupHelper.showPopup(0, 0, false, false);
                                break;
                            }
                        }
                        break;
                }
            }
        });
        if (this.searchConfiguration.historyEnabled) {
            ((ImageView) this.viewHolder.opaquePart).setVisibility(0);
        }
        String str = this.searchConfiguration.textHint;
        if (str != null) {
            ((EditText) this.viewHolder.authority).setHint(str);
        }
        String str2 = this.searchConfiguration.textNoResults;
        if (str2 != null) {
            ((TextView) this.viewHolder.fragment).setText(str2);
        }
        String str3 = this.searchConfiguration.textClearInput;
        if (str3 != null) {
            ((ImageView) this.viewHolder.scheme).setContentDescription(str3);
        }
        String str4 = this.searchConfiguration.textMore;
        if (str4 != null) {
            ((ImageView) this.viewHolder.opaquePart).setContentDescription(str4);
        }
        final int i = 1;
        ((ImageView) this.viewHolder.opaquePart).setOnClickListener(new View.OnClickListener(this) { // from class: com.bytehamster.lib.preferencesearch.SearchPreferenceFragment$$ExternalSyntheticLambda1
            public final /* synthetic */ SearchPreferenceFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i2 = i;
                SearchPreferenceFragment searchPreferenceFragment = this.f$0;
                switch (i2) {
                    case 0:
                        ((EditText) searchPreferenceFragment.viewHolder.authority).setText("");
                        break;
                    default:
                        Context context = searchPreferenceFragment.getContext();
                        PopupMenu popupMenu = new PopupMenu(context, (ImageView) searchPreferenceFragment.viewHolder.opaquePart);
                        SupportMenuInflater supportMenuInflater = new SupportMenuInflater(context);
                        MenuBuilder menuBuilder = popupMenu.mMenu;
                        supportMenuInflater.inflate(R.menu.searchpreference_more, menuBuilder);
                        popupMenu.mMenuItemClickListener = new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(18, searchPreferenceFragment);
                        if (searchPreferenceFragment.searchConfiguration.textClearHistory != null) {
                            menuBuilder.findItem(R.id.clear_history).setTitle(searchPreferenceFragment.searchConfiguration.textClearHistory);
                        }
                        MenuPopupHelper menuPopupHelper = popupMenu.mPopup;
                        if (!menuPopupHelper.isShowing()) {
                            if (menuPopupHelper.mAnchorView == null) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("MenuPopupHelper cannot be used without an anchor");
                                break;
                            } else {
                                menuPopupHelper.showPopup(0, 0, false, false);
                                break;
                            }
                        }
                        break;
                }
            }
        });
        ((RecyclerView) this.viewHolder.query).setLayoutManager(new LinearLayoutManager(getContext()));
        SearchPreferenceAdapter searchPreferenceAdapter = new SearchPreferenceAdapter();
        searchPreferenceAdapter.dataset = new ArrayList();
        this.adapter = searchPreferenceAdapter;
        searchPreferenceAdapter.searchConfiguration = this.searchConfiguration;
        searchPreferenceAdapter.onItemClickListener = this;
        ((RecyclerView) this.viewHolder.query).setAdapter(searchPreferenceAdapter);
        ((EditText) this.viewHolder.authority).addTextChangedListener(this.textWatcher);
        ((EditText) this.viewHolder.authority).setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.bytehamster.lib.preferencesearch.SearchPreferenceFragment$$ExternalSyntheticLambda3
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                if (i2 != 6) {
                    return false;
                }
                SearchPreferenceFragment.this.hideKeyboard$2();
                return true;
            }
        });
        if (!this.searchConfiguration.searchBarEnabled) {
            ((CardView) this.viewHolder.path).setVisibility(8);
        }
        String str5 = this.searchTermPreset;
        if (str5 != null) {
            ((EditText) this.viewHolder.authority).setText(str5);
        }
        final RevealAnimationSetting revealAnimationSetting = this.searchConfiguration.revealAnimationSetting;
        if (revealAnimationSetting != null) {
            final Context context = getContext();
            final int i2 = revealAnimationSetting.colorAccent;
            Drawable background = inflate.getBackground();
            final int color = background instanceof ColorDrawable ? ((ColorDrawable) background).getColor() : 0;
            inflate.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.bytehamster.lib.preferencesearch.ui.AnimationUtils$1
                @Override // android.view.View.OnLayoutChangeListener
                public final void onLayoutChange(View view, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
                    view.removeOnLayoutChangeListener(this);
                    View view2 = inflate;
                    view2.setVisibility(0);
                    RevealAnimationSetting revealAnimationSetting2 = revealAnimationSetting;
                    int i11 = revealAnimationSetting2.centerX;
                    int i12 = revealAnimationSetting2.centerY;
                    int i13 = revealAnimationSetting2.width;
                    int i14 = revealAnimationSetting2.height;
                    int integer = context.getResources().getInteger(android.R.integer.config_longAnimTime);
                    Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(view, i11, i12, 0.0f, (float) Math.sqrt((i14 * i14) + (i13 * i13)));
                    long j = integer;
                    Animator duration = createCircularReveal.setDuration(j);
                    duration.setInterpolator(new FastOutSlowInInterpolator(0));
                    duration.start();
                    ValueAnimator valueAnimator = new ValueAnimator();
                    valueAnimator.setIntValues(i2, color);
                    valueAnimator.setEvaluator(new ArgbEvaluator());
                    valueAnimator.addUpdateListener(new TextInputLayout.AnonymousClass4(3, view2));
                    valueAnimator.setDuration(j);
                    valueAnimator.start();
                }
            });
        }
        inflate.setOnTouchListener(new ToolbarBottomSheetDialog$$ExternalSyntheticLambda2(1));
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        this.mCalled = true;
        updateSearchResults(((EditText) this.viewHolder.authority).getText().toString());
        if (this.searchConfiguration.searchBarEnabled) {
            ((EditText) this.viewHolder.authority).post(new Fragment$$ExternalSyntheticLambda0(5, this));
        }
    }

    public final void saveHistory() {
        SharedPreferences.Editor edit = this.prefs.edit();
        edit.putInt(historySizeKey(), this.history.size());
        for (int i = 0; i < this.history.size(); i++) {
            edit.putString(historyEntryKey(i), ((HistoryItem) this.history.get(i)).term);
        }
        edit.apply();
    }

    public final void setEmptyViewShown(boolean z) {
        Uri.Builder builder = this.viewHolder;
        if (z) {
            ((TextView) builder.fragment).setVisibility(0);
            ((RecyclerView) this.viewHolder.query).setVisibility(8);
        } else {
            ((TextView) builder.fragment).setVisibility(8);
            ((RecyclerView) this.viewHolder.query).setVisibility(0);
        }
    }

    public final void updateSearchResults(String str) {
        List subList;
        if (TextUtils.isEmpty(str)) {
            ((TextView) this.viewHolder.fragment).setVisibility(8);
            ((RecyclerView) this.viewHolder.query).setVisibility(0);
            SearchPreferenceAdapter searchPreferenceAdapter = this.adapter;
            ArrayList arrayList = new ArrayList(this.history);
            searchPreferenceAdapter.getClass();
            searchPreferenceAdapter.dataset = new ArrayList(arrayList);
            searchPreferenceAdapter.mObservable.notifyChanged();
            setEmptyViewShown(this.history.isEmpty());
            return;
        }
        PreferenceParser preferenceParser = this.searcher;
        boolean z = this.searchConfiguration.fuzzySearchEnabled;
        preferenceParser.getClass();
        if (TextUtils.isEmpty(str)) {
            subList = new ArrayList();
        } else {
            ArrayList arrayList2 = new ArrayList();
            Iterator it = preferenceParser.allEntries.iterator();
            while (it.hasNext()) {
                PreferenceItem preferenceItem = (PreferenceItem) it.next();
                if (!z || preferenceItem.getScore(str) <= 0.3d) {
                    if (!z) {
                        preferenceItem.getClass();
                        Locale locale = Locale.getDefault();
                        if (preferenceItem.getInfo().toLowerCase(locale).contains(str.toLowerCase(locale))) {
                        }
                    }
                }
                arrayList2.add(preferenceItem);
            }
            Collections.sort(arrayList2, new PreferenceParser.AnonymousClass1(0, str));
            subList = arrayList2.size() > 10 ? arrayList2.subList(0, 10) : arrayList2;
        }
        this.results = subList;
        SearchPreferenceAdapter searchPreferenceAdapter2 = this.adapter;
        ArrayList arrayList3 = new ArrayList(this.results);
        searchPreferenceAdapter2.getClass();
        searchPreferenceAdapter2.dataset = new ArrayList(arrayList3);
        searchPreferenceAdapter2.mObservable.notifyChanged();
        setEmptyViewShown(this.results.isEmpty());
    }
}
