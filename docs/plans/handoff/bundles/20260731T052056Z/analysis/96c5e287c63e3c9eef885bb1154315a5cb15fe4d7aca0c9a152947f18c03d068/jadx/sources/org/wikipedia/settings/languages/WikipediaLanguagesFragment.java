package org.wikipedia.settings.languages;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.view.ActionMode;
import androidx.core.view.MenuProvider;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle$State;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.chip.Chip$$ExternalSyntheticLambda0;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.internal.HashSetSerializer;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.JsonImpl;
import okhttp3.Cache;
import okhttp3.MultipartBody;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.diff.DiffLineView$$ExternalSyntheticLambda0;
import org.wikipedia.json.JsonUtil;
import org.wikipedia.page.customize.CustomizeToolbarFragment;
import org.wikipedia.readinglist.ReadingListFragment;
import org.wikipedia.settings.languages.WikipediaLanguagesItemView;
import org.wikipedia.talk.template.TalkTemplatesFragment;
import org.wikipedia.talk.template.TalkTemplatesFragment$RecyclerAdapter$$ExternalSyntheticLambda0;
import org.wikipedia.talk.template.TalkTemplatesItemView$$ExternalSyntheticLambda0;
import org.wikipedia.util.DeviceUtil$$ExternalSyntheticLambda0;
import org.wikipedia.util.StringUtil;
import org.wikipedia.util.log.L;
import org.wikipedia.views.DefaultViewHolder;
import org.wikipedia.views.LangCodeView;
import org.wikipedia.views.PageItemView$$ExternalSyntheticLambda1;
import retrofit2.Retrofit;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0006\u0006\u0007\b\t\n\u000bB\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\f"}, d2 = {"Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;", "Landroidx/fragment/app/Fragment;", "Landroidx/core/view/MenuProvider;", "Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView$Callback;", "<init>", "()V", "WikipediaLanguageItemAdapter", "RearrangeableItemTouchHelperCallback", "DescriptionViewHolder", "WikipediaLanguageItemHolder", "FooterViewHolder", "MultiSelectCallback", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class WikipediaLanguagesFragment extends Fragment implements MenuProvider, WikipediaLanguagesItemView.Callback {
    public MultipartBody.Builder _binding;
    public ActionMode actionMode;
    public WikipediaLanguageItemAdapter adapter;
    public final WikipediaApp app;
    public boolean isLanguageSearched;
    public ItemTouchHelper itemTouchHelper;
    public final ReadingListFragment.MultiSelectCallback multiSelectCallback;
    public final ArrayList selectedCodes;
    public final ArrayList wikipediaLanguages;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class FooterViewHolder extends DefaultViewHolder {
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class WikipediaLanguageItemAdapter extends RecyclerView.Adapter {
        public boolean checkboxEnabled;

        public WikipediaLanguageItemAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int getItemCount() {
            return WikipediaLanguagesFragment.this.wikipediaLanguages.size() + 2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int getItemViewType(int i) {
            if (i == 0) {
                return 0;
            }
            return i == getItemCount() - 1 ? 2 : 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            DefaultViewHolder defaultViewHolder = (DefaultViewHolder) viewHolder;
            if (defaultViewHolder instanceof WikipediaLanguageItemHolder) {
                WikipediaLanguageItemHolder wikipediaLanguageItemHolder = (WikipediaLanguageItemHolder) defaultViewHolder;
                View view = wikipediaLanguageItemHolder.itemView;
                WikipediaLanguagesFragment wikipediaLanguagesFragment = WikipediaLanguagesFragment.this;
                ArrayList arrayList = wikipediaLanguagesFragment.wikipediaLanguages;
                int i2 = i - 1;
                String str = (String) arrayList.get(i2);
                str.getClass();
                view.getClass();
                WikipediaLanguagesItemView wikipediaLanguagesItemView = (WikipediaLanguagesItemView) view;
                String appLanguageLocalizedName = WikipediaLanguagesFragment.this.app.getLanguageState().getAppLanguageLocalizedName(str);
                wikipediaLanguagesItemView.position = i2;
                Retrofit retrofit = wikipediaLanguagesItemView.binding;
                ((TextView) retrofit.converterFactories).setText(String.valueOf(i));
                TextView textView = (TextView) retrofit.callAdapterFactories;
                StringUtil stringUtil = StringUtil.INSTANCE;
                if (appLanguageLocalizedName == null) {
                    appLanguageLocalizedName = "";
                }
                textView.setText(StringUtil.capitalize(appLanguageLocalizedName));
                textView.forceLayout();
                ((LangCodeView) retrofit.callFactory).setLangCode(str);
                wikipediaLanguagesItemView.setCheckBoxEnabled(this.checkboxEnabled);
                wikipediaLanguagesItemView.setCheckBoxChecked(wikipediaLanguagesFragment.selectedCodes.contains(arrayList.get(i2)));
                wikipediaLanguagesItemView.setDragHandleEnabled(arrayList.size() > 1 && !this.checkboxEnabled);
                wikipediaLanguagesItemView.setOnClickListener(new TalkTemplatesItemView$$ExternalSyntheticLambda0(i, 2, wikipediaLanguagesFragment));
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            if (i == 0) {
                View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.view_section_header, viewGroup, false);
                inflate.getClass();
                CustomizeToolbarFragment.DescriptionViewHolder descriptionViewHolder = new CustomizeToolbarFragment.DescriptionViewHolder(inflate);
                ((TextView) inflate.findViewById(R.id.section_header_text)).setText(R.string.wikipedia_languages_your_languages_text);
                return descriptionViewHolder;
            }
            if (i == 2) {
                View inflate2 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.view_wikipedia_language_footer, viewGroup, false);
                inflate2.getClass();
                return new FooterViewHolder(inflate2);
            }
            WikipediaLanguagesItemView wikipediaLanguagesItemView = new WikipediaLanguagesItemView(viewGroup.getContext());
            LayoutInflater.from(wikipediaLanguagesItemView.getContext()).inflate(R.layout.item_wikipedia_language, wikipediaLanguagesItemView);
            int i2 = R.id.wiki_language_checkbox;
            CheckBox checkBox = (CheckBox) Room.findChildViewById(wikipediaLanguagesItemView, R.id.wiki_language_checkbox);
            if (checkBox != null) {
                i2 = R.id.wiki_language_code;
                LangCodeView langCodeView = (LangCodeView) Room.findChildViewById(wikipediaLanguagesItemView, R.id.wiki_language_code);
                if (langCodeView != null) {
                    i2 = R.id.wiki_language_drag_handle;
                    ImageView imageView = (ImageView) Room.findChildViewById(wikipediaLanguagesItemView, R.id.wiki_language_drag_handle);
                    if (imageView != null) {
                        i2 = R.id.wiki_language_order;
                        TextView textView = (TextView) Room.findChildViewById(wikipediaLanguagesItemView, R.id.wiki_language_order);
                        if (textView != null) {
                            i2 = R.id.wiki_language_title;
                            TextView textView2 = (TextView) Room.findChildViewById(wikipediaLanguagesItemView, R.id.wiki_language_title);
                            if (textView2 != null) {
                                wikipediaLanguagesItemView.binding = new Retrofit(wikipediaLanguagesItemView, checkBox, langCodeView, imageView, textView, textView2);
                                wikipediaLanguagesItemView.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                                wikipediaLanguagesItemView.setMinimumHeight(Okio__OkioKt.roundedDpToPx(Okio__OkioKt.getDimension(R.dimen.list_item_default_height)));
                                Context context = wikipediaLanguagesItemView.getContext();
                                context.getClass();
                                wikipediaLanguagesItemView.setBackgroundColor(Cache.Companion.getThemedColor(context, R.attr.paper_color));
                                Context context2 = wikipediaLanguagesItemView.getContext();
                                Context context3 = wikipediaLanguagesItemView.getContext();
                                context3.getClass();
                                wikipediaLanguagesItemView.setForeground(TuplesKt.getDrawable(context2, Cache.Companion.getThemedAttributeId(context3, R.attr.selectableItemBackground)));
                                checkBox.setOnCheckedChangeListener(new Chip$$ExternalSyntheticLambda0(4, wikipediaLanguagesItemView));
                                wikipediaLanguagesItemView.setOnLongClickListener(new PageItemView$$ExternalSyntheticLambda1(6, wikipediaLanguagesItemView));
                                new View[]{wikipediaLanguagesItemView}[0].setOnContextClickListener(new DeviceUtil$$ExternalSyntheticLambda0());
                                return WikipediaLanguagesFragment.this.new WikipediaLanguageItemHolder(wikipediaLanguagesItemView);
                            }
                        }
                    }
                }
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(wikipediaLanguagesItemView.getResources().getResourceName(i2)));
            return null;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
            DefaultViewHolder defaultViewHolder = (DefaultViewHolder) viewHolder;
            boolean z = defaultViewHolder instanceof WikipediaLanguageItemHolder;
            WikipediaLanguagesFragment wikipediaLanguagesFragment = WikipediaLanguagesFragment.this;
            if (z) {
                View view = ((WikipediaLanguageItemHolder) defaultViewHolder).itemView;
                view.getClass();
                WikipediaLanguagesItemView wikipediaLanguagesItemView = (WikipediaLanguagesItemView) view;
                wikipediaLanguagesItemView.setDragHandleTouchListener(new TalkTemplatesFragment$RecyclerAdapter$$ExternalSyntheticLambda0(wikipediaLanguagesFragment, defaultViewHolder, 2));
                wikipediaLanguagesItemView.setCallback(wikipediaLanguagesFragment);
                return;
            }
            if (defaultViewHolder instanceof FooterViewHolder) {
                View view2 = ((FooterViewHolder) defaultViewHolder).itemView;
                view2.getClass();
                view2.setVisibility(this.checkboxEnabled ? 8 : 0);
                view2.setOnClickListener(new DiffLineView$$ExternalSyntheticLambda0(20, wikipediaLanguagesFragment));
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
            DefaultViewHolder defaultViewHolder = (DefaultViewHolder) viewHolder;
            if (defaultViewHolder instanceof WikipediaLanguageItemHolder) {
                View view = ((WikipediaLanguageItemHolder) defaultViewHolder).itemView;
                view.getClass();
                WikipediaLanguagesItemView wikipediaLanguagesItemView = (WikipediaLanguagesItemView) view;
                wikipediaLanguagesItemView.setCallback(null);
                wikipediaLanguagesItemView.setDragHandleTouchListener(null);
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class WikipediaLanguageItemHolder extends DefaultViewHolder {
        public WikipediaLanguageItemHolder(WikipediaLanguagesItemView wikipediaLanguagesItemView) {
            super(wikipediaLanguagesItemView);
        }
    }

    public WikipediaLanguagesFragment() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        this.app = Jsoup.getInstance();
        this.wikipediaLanguages = new ArrayList();
        this.selectedCodes = new ArrayList();
        this.multiSelectCallback = new ReadingListFragment.MultiSelectCallback(3, this);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 59 && i2 == -1) {
            intent.getClass();
            intent.getIntExtra("add_language_interactions", 0);
            this.isLanguageSearched = this.isLanguageSearched || intent.getBooleanExtra("language_searched", false);
            prepareWikipediaLanguagesList();
            requireActivity().invalidateOptionsMenu();
            WikipediaLanguageItemAdapter wikipediaLanguageItemAdapter = this.adapter;
            if (wikipediaLanguageItemAdapter != null) {
                wikipediaLanguageItemAdapter.notifyDataSetChanged();
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                throw null;
            }
        }
    }

    @Override // androidx.core.view.MenuProvider
    public final void onCreateMenu(Menu menu, MenuInflater menuInflater) {
        menu.getClass();
        menuInflater.getClass();
        menuInflater.inflate(R.menu.menu_wikipedia_languages, menu);
        if (((ArrayList) this.app.getLanguageState().getAppLanguageCodes()).size() <= 1) {
            menu.getItem(0).setVisible(false);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        View inflate = layoutInflater.inflate(R.layout.fragment_wikipedia_languages, viewGroup, false);
        int i = R.id.toolbar;
        MaterialToolbar materialToolbar = (MaterialToolbar) Room.findChildViewById(inflate, R.id.toolbar);
        if (materialToolbar != null) {
            i = R.id.wikipedia_languages_recycler;
            RecyclerView recyclerView = (RecyclerView) Room.findChildViewById(inflate, R.id.wikipedia_languages_recycler);
            if (recyclerView != null) {
                this._binding = new MultipartBody.Builder((LinearLayout) inflate, materialToolbar, recyclerView);
                AppCompatActivity requireActivity = requireActivity();
                MultipartBody.Builder builder = this._binding;
                builder.getClass();
                requireActivity.setSupportActionBar((MaterialToolbar) builder.type);
                Serializable serializableExtra = requireActivity().getIntent().getSerializableExtra("invokeSource");
                serializableExtra.getClass();
                JsonImpl jsonImpl = JsonUtil.json;
                List appLanguageCodes = this.app.getLanguageState().getAppLanguageCodes();
                try {
                    JsonImpl jsonImpl2 = JsonUtil.json;
                    jsonImpl2.getClass();
                    jsonImpl2.encodeToString(new HashSetSerializer(StringSerializer.INSTANCE, 1), appLanguageCodes);
                } catch (Exception e) {
                    L.w(e);
                }
                requireActivity().addMenuProvider(this, getViewLifecycleOwner(), Lifecycle$State.RESUMED);
                prepareWikipediaLanguagesList();
                MultipartBody.Builder builder2 = this._binding;
                builder2.getClass();
                ((RecyclerView) builder2.parts).setHasFixedSize(true);
                this.adapter = new WikipediaLanguageItemAdapter();
                MultipartBody.Builder builder3 = this._binding;
                builder3.getClass();
                RecyclerView recyclerView2 = (RecyclerView) builder3.parts;
                WikipediaLanguageItemAdapter wikipediaLanguageItemAdapter = this.adapter;
                if (wikipediaLanguageItemAdapter == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                    throw null;
                }
                recyclerView2.setAdapter(wikipediaLanguageItemAdapter);
                MultipartBody.Builder builder4 = this._binding;
                builder4.getClass();
                ((RecyclerView) builder4.parts).setLayoutManager(new LinearLayoutManager(1));
                WikipediaLanguageItemAdapter wikipediaLanguageItemAdapter2 = this.adapter;
                if (wikipediaLanguageItemAdapter2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                    throw null;
                }
                ItemTouchHelper itemTouchHelper = new ItemTouchHelper(new TalkTemplatesFragment.RearrangeableItemTouchHelperCallback(this, wikipediaLanguageItemAdapter2));
                this.itemTouchHelper = itemTouchHelper;
                MultipartBody.Builder builder5 = this._binding;
                builder5.getClass();
                itemTouchHelper.attachToRecyclerView((RecyclerView) builder5.parts);
                MultipartBody.Builder builder6 = this._binding;
                builder6.getClass();
                LinearLayout linearLayout = (LinearLayout) builder6.boundary;
                linearLayout.getClass();
                return linearLayout;
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        MultipartBody.Builder builder = this._binding;
        builder.getClass();
        ((RecyclerView) builder.parts).setAdapter(null);
        this._binding = null;
        this.mCalled = true;
    }

    @Override // androidx.core.view.MenuProvider
    public final boolean onMenuItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        if (menuItem.getItemId() != R.id.menu_wikipedia_languages_remove) {
            return false;
        }
        requireActivity().startSupportActionMode(this.multiSelectCallback);
        WikipediaLanguageItemAdapter wikipediaLanguageItemAdapter = this.adapter;
        if (wikipediaLanguageItemAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        wikipediaLanguageItemAdapter.checkboxEnabled = true;
        wikipediaLanguageItemAdapter.notifyDataSetChanged();
        requireActivity().invalidateOptionsMenu();
        return true;
    }

    public final void prepareWikipediaLanguagesList() {
        ArrayList arrayList = this.wikipediaLanguages;
        arrayList.clear();
        arrayList.addAll(this.app.getLanguageState().getAppLanguageCodes());
    }

    public final void toggleSelectedLanguage(String str) {
        ArrayList arrayList = this.selectedCodes;
        if (arrayList.contains(str)) {
            arrayList.remove(str);
        } else {
            arrayList.add(str);
        }
    }

    @Override // androidx.core.view.MenuProvider
    public final void onMenuClosed(Menu menu) {
    }

    @Override // androidx.core.view.MenuProvider
    public final void onPrepareMenu(Menu menu) {
    }
}
