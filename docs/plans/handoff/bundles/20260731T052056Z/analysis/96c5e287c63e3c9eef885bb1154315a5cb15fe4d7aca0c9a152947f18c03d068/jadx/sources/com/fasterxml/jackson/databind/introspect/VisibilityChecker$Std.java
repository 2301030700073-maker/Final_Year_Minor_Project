package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import java.io.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class VisibilityChecker$Std implements Serializable {
    public static final VisibilityChecker$Std ALL_PUBLIC;
    public static final VisibilityChecker$Std DEFAULT;
    public final JsonAutoDetect.Visibility _creatorMinLevel;
    public final JsonAutoDetect.Visibility _fieldMinLevel;
    public final JsonAutoDetect.Visibility _getterMinLevel;
    public final JsonAutoDetect.Visibility _isGetterMinLevel;
    public final JsonAutoDetect.Visibility _setterMinLevel;

    static {
        JsonAutoDetect.Visibility visibility = JsonAutoDetect.Visibility.PUBLIC_ONLY;
        JsonAutoDetect.Visibility visibility2 = JsonAutoDetect.Visibility.ANY;
        DEFAULT = new VisibilityChecker$Std(visibility, visibility, visibility2, visibility2, visibility);
        ALL_PUBLIC = new VisibilityChecker$Std(visibility, visibility, visibility, visibility, visibility);
    }

    public VisibilityChecker$Std(JsonAutoDetect.Visibility visibility, JsonAutoDetect.Visibility visibility2, JsonAutoDetect.Visibility visibility3, JsonAutoDetect.Visibility visibility4, JsonAutoDetect.Visibility visibility5) {
        this._getterMinLevel = visibility;
        this._isGetterMinLevel = visibility2;
        this._setterMinLevel = visibility3;
        this._creatorMinLevel = visibility4;
        this._fieldMinLevel = visibility5;
    }

    public final String toString() {
        return "[Visibility: getter=" + this._getterMinLevel + ",isGetter=" + this._isGetterMinLevel + ",setter=" + this._setterMinLevel + ",creator=" + this._creatorMinLevel + ",field=" + this._fieldMinLevel + "]";
    }
}
