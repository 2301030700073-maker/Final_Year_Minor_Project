package com.facebook.appevents.codeless.internal;

import defpackage.C0173Do;
import defpackage.C2819gd;
import java.util.Arrays;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class PathComponent {
    public static final Companion Companion = new Companion(null);
    private static final String PATH_CLASS_NAME_KEY = "class_name";
    private static final String PATH_DESCRIPTION_KEY = "description";
    private static final String PATH_HINT_KEY = "hint";
    private static final String PATH_ID_KEY = "id";
    private static final String PATH_INDEX_KEY = "index";
    private static final String PATH_MATCH_BITMASK_KEY = "match_bitmask";
    private static final String PATH_TAG_KEY = "tag";
    private static final String PATH_TEXT_KEY = "text";
    private final String className;
    private final String description;
    private final String hint;
    private final int id;
    private final int index;
    private final int matchBitmask;
    private final String tag;
    private final String text;

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(C2819gd c2819gd) {
            this();
        }
    }

    public enum MatchBitmaskType {
        ID(1),
        TEXT(2),
        TAG(4),
        DESCRIPTION(8),
        HINT(16);

        private final int value;

        MatchBitmaskType(int i) {
            this.value = i;
        }

        /* renamed from: values, reason: to resolve conflict with enum method */
        public static MatchBitmaskType[] valuesCustom() {
            MatchBitmaskType[] valuesCustom = values();
            return (MatchBitmaskType[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
        }

        public final int getValue() {
            return this.value;
        }
    }

    public PathComponent(JSONObject jSONObject) {
        C0173Do.m401try(jSONObject, "component");
        String string = jSONObject.getString(PATH_CLASS_NAME_KEY);
        C0173Do.m399new(string, "component.getString(PATH_CLASS_NAME_KEY)");
        this.className = string;
        this.index = jSONObject.optInt(PATH_INDEX_KEY, -1);
        this.id = jSONObject.optInt("id");
        String optString = jSONObject.optString("text");
        C0173Do.m399new(optString, "component.optString(PATH_TEXT_KEY)");
        this.text = optString;
        String optString2 = jSONObject.optString("tag");
        C0173Do.m399new(optString2, "component.optString(PATH_TAG_KEY)");
        this.tag = optString2;
        String optString3 = jSONObject.optString("description");
        C0173Do.m399new(optString3, "component.optString(PATH_DESCRIPTION_KEY)");
        this.description = optString3;
        String optString4 = jSONObject.optString("hint");
        C0173Do.m399new(optString4, "component.optString(PATH_HINT_KEY)");
        this.hint = optString4;
        this.matchBitmask = jSONObject.optInt(PATH_MATCH_BITMASK_KEY);
    }

    public final String getClassName() {
        return this.className;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getHint() {
        return this.hint;
    }

    public final int getId() {
        return this.id;
    }

    public final int getIndex() {
        return this.index;
    }

    public final int getMatchBitmask() {
        return this.matchBitmask;
    }

    public final String getTag() {
        return this.tag;
    }

    public final String getText() {
        return this.text;
    }
}
