package com.fasterxml.jackson.core.json;

import androidx.compose.ui.Modifier;
import coil3.ImageLoader$Builder;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.base.GeneratorBase;
import com.fasterxml.jackson.core.io.CharTypes;
import com.fasterxml.jackson.core.io.SerializedString;
import com.fasterxml.jackson.core.util.DefaultPrettyPrinter;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class JsonGeneratorImpl extends GeneratorBase {
    public static final int[] sOutputEscapes = CharTypes.sOutputEscapes128;
    public boolean _cfgUnqNames;
    public final ImageLoader$Builder _ioContext;
    public int _maximumNonEscapedChar;
    public final int[] _outputEscapes;
    public SerializedString _rootValueSeparator;

    public JsonGeneratorImpl(ImageLoader$Builder imageLoader$Builder, int i) {
        this._features = i;
        this._writeContext = new JsonWriteContext(0, null, JsonGenerator.Feature.STRICT_DUPLICATE_DETECTION.enabledIn(i) ? new ImageLoader$Builder(22, this) : null);
        this._cfgNumbersAsStrings = JsonGenerator.Feature.WRITE_NUMBERS_AS_STRINGS.enabledIn(i);
        this._outputEscapes = sOutputEscapes;
        this._rootValueSeparator = DefaultPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR;
        this._ioContext = imageLoader$Builder;
        if (JsonGenerator.Feature.ESCAPE_NON_ASCII.enabledIn(i)) {
            this._maximumNonEscapedChar = 127;
        }
        this._cfgUnqNames = !JsonGenerator.Feature.QUOTE_FIELD_NAMES.enabledIn(i);
    }

    public final void _reportCantWriteValueExpectName(String str) {
        _reportError(Modifier.CC.m("Can not ", str, ", expecting field name (context: ", this._writeContext.typeDesc(), ")"));
        throw null;
    }

    public final JsonGeneratorImpl disable(JsonGenerator.Feature feature) {
        int mask = feature.getMask();
        this._features &= ~mask;
        if ((mask & GeneratorBase.DERIVED_FEATURES_MASK) != 0) {
            if (feature == JsonGenerator.Feature.WRITE_NUMBERS_AS_STRINGS) {
                this._cfgNumbersAsStrings = false;
            } else if (feature == JsonGenerator.Feature.ESCAPE_NON_ASCII) {
                this._maximumNonEscapedChar = 0;
            } else if (feature == JsonGenerator.Feature.STRICT_DUPLICATE_DETECTION) {
                JsonWriteContext jsonWriteContext = this._writeContext;
                jsonWriteContext._dups = null;
                this._writeContext = jsonWriteContext;
            }
        }
        if (feature == JsonGenerator.Feature.QUOTE_FIELD_NAMES) {
            this._cfgUnqNames = true;
        }
        return this;
    }
}
