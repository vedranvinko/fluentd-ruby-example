# fluentd-ruby-example

```bash
fluentd --setup ./fluent
fluentd -c ./fluent/fluent.conf -vv
echo '{"json":"message"}' | fluent-cat debug.test
```
