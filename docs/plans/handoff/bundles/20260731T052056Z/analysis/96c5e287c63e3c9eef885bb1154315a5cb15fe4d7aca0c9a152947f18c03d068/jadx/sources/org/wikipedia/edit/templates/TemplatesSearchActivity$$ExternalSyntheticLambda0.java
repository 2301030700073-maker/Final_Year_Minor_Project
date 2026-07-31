package org.wikipedia.edit.templates;

import android.content.Intent;
import android.os.Build;
import android.view.View;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.WindowInsetsControllerCompat$Impl23;
import androidx.core.view.WindowInsetsControllerCompat$Impl26;
import androidx.core.view.WindowInsetsControllerCompat$Impl30;
import androidx.core.view.WindowInsetsControllerCompat$Impl35;
import androidx.paging.HintHandler;
import com.google.android.material.textfield.TextInputLayout;
import com.google.gson.GsonBuilder;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.internal.HashSetSerializer;
import kotlinx.serialization.json.JsonImpl;
import org.wikipedia.R;
import org.wikipedia.json.JsonUtil;
import org.wikipedia.page.PageTitle;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.util.log.L;
import org.wikipedia.views.CabSearchView;
import org.wikipedia.views.PlainPasteEditText;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class TemplatesSearchActivity$$ExternalSyntheticLambda0 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ TemplatesSearchActivity f$0;

    public /* synthetic */ TemplatesSearchActivity$$ExternalSyntheticLambda0(TemplatesSearchActivity templatesSearchActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = templatesSearchActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        String str;
        int i = this.$r8$classId;
        int i2 = 0;
        TemplatesSearchActivity templatesSearchActivity = this.f$0;
        switch (i) {
            case 0:
                int i3 = TemplatesSearchActivity.$r8$clinit;
                PageTitle pageTitle = templatesSearchActivity.getViewModel().selectedPageTitle;
                if (pageTitle != null) {
                    TemplatesSearchActivity.sendPatrollerExperienceEvent$default(templatesSearchActivity, "template_insert_click");
                    Prefs prefs = Prefs.INSTANCE;
                    Set of = UuidKt.setOf(pageTitle);
                    Set mutableSet = CollectionsKt.toMutableSet(Prefs.getRecentUsedTemplates());
                    mutableSet.addAll(of);
                    if (mutableSet.size() < 100) {
                        of = mutableSet;
                    }
                    try {
                        JsonImpl jsonImpl = JsonUtil.json;
                        jsonImpl.getClass();
                        str = jsonImpl.encodeToString(new HashSetSerializer(PageTitle.Companion.serializer(), 2), of);
                    } catch (Exception e) {
                        L.w(e);
                        str = null;
                    }
                    PrefsIoUtil.setString(R.string.preference_key_recent_used_templates, str);
                    InsertTemplateFragment insertTemplateFragment = templatesSearchActivity.insertTemplateFragment;
                    if (insertTemplateFragment == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("insertTemplateFragment");
                        throw null;
                    }
                    GsonBuilder gsonBuilder = insertTemplateFragment._binding;
                    gsonBuilder.getClass();
                    String str2 = "{{" + ((Object) ((TextView) gsonBuilder.reflectionFilters).getText());
                    GsonBuilder gsonBuilder2 = insertTemplateFragment._binding;
                    gsonBuilder2.getClass();
                    LinearLayout linearLayout = (LinearLayout) gsonBuilder2.hierarchyFactories;
                    while (i2 < linearLayout.getChildCount()) {
                        int i4 = i2 + 1;
                        View childAt = linearLayout.getChildAt(i2);
                        if (childAt == null) {
                            throw new IndexOutOfBoundsException();
                        }
                        Object tag = ((TextInputLayout) childAt.findViewById(R.id.textInputLayout)).getTag();
                        tag.getClass();
                        String str3 = (String) tag;
                        String concat = StringsKt__StringsJVMKt.toIntOrNull(str3) != null ? "" : str3.concat("=");
                        String obj = StringsKt.trim(String.valueOf(((PlainPasteEditText) childAt.findViewById(R.id.editText)).getText())).toString();
                        if (obj.length() > 0) {
                            str2 = ((Object) str2) + "|" + concat + obj;
                        }
                        i2 = i4;
                    }
                    Intent putExtra = new Intent().putExtra("resultWikiText", ((Object) str2) + "}}");
                    putExtra.getClass();
                    templatesSearchActivity.setResult(100, putExtra);
                    templatesSearchActivity.finish();
                    return;
                }
                return;
            default:
                int i5 = TemplatesSearchActivity.$r8$clinit;
                GsonBuilder gsonBuilder3 = templatesSearchActivity.binding;
                if (gsonBuilder3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                ((CabSearchView) gsonBuilder3.fieldNamingPolicy).setQuery("", false);
                Window window = templatesSearchActivity.getWindow();
                window.getClass();
                HintHandler hintHandler = new HintHandler(window.getDecorView());
                int i6 = Build.VERSION.SDK_INT;
                (i6 >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i6 >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i6 >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).hide();
                return;
        }
    }
}
